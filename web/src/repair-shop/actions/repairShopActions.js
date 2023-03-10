'use strict';

import * as PharmaActionType from './pharmaActionTypes';
import * as Api from '../api';

export function loadRepairOrders() {
  return async dispatch => {
    let repairOrders;
    try {
      repairOrders = await Api.getRepairOrders();
    } catch (e) {
      console.log(e);
    }
    if (Array.isArray(repairOrders)) {
      dispatch(loadRepairOrdersSuccess(repairOrders));
    }
  };
}

function loadRepairOrdersSuccess(repairOrders) {
  return {
    type: PharmaActionType.LOAD_REPAIR_ORDERS_SUCCESS,
    repairOrders
  };
}

export function completeRepairOrder(uuid) {
  return async dispatch => {
    try {
      await Api.completeRepairOrder(uuid);
      dispatch(completeRepairOrderSuccess(uuid));
    } catch (e) {
      console.log(e);
    }
  };
}

function completeRepairOrderSuccess(uuid) {
  return {
    type: PharmaActionType.COMPLETE_REPAIR_ORDER_SUCCESS,
    uuid
  };
}
