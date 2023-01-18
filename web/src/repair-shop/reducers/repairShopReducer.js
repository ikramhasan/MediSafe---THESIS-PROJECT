'use strict';

import * as PharmaActionType from '../actions/pharmaActionTypes';
import * as initialState from './initialState';

export default function pharmaReducer(state = initialState.pharma, action) {
  switch (action.type) {
    case PharmaActionType.LOAD_REPAIR_ORDERS_SUCCESS:
      return Object.assign({}, state, { repairOrders: action.repairOrders });
    case PharmaActionType.COMPLETE_REPAIR_ORDER_SUCCESS:
      return Object.assign({}, state,
        {
          repairOrders: [
            ...(state.repairOrders.filter(ro => ro.uuid !== action.uuid))
          ]
        });
    default:
      return state;
  }
}
