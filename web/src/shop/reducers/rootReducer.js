'use strict';

import { combineReducers } from 'redux';

import doctor from './shopReducer';
import insurance from './insuranceReducer';
import payment from './paymentReducer';
import userMgmt from './userMgmtReducer';

export default combineReducers({ doctor, insurance, payment, userMgmt });
