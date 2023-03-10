'use strict';

import React from 'react';
import { render } from 'react-dom';
import { Provider as StoreProvider } from 'react-redux';
import { IntlProvider, addLocaleData, defineMessages } from 'react-intl';
import enLocaleData from 'react-intl/locale-data/en';
import deLocaleData from 'react-intl/locale-data/de';

import getLocale from '../shared/getLocale';
import AppRouter from './router';
import configStore from './store';
import translations from './translations';
import { loadRepairOrders } from './actions/pharmaActions';

const store = configStore();
store.dispatch(loadRepairOrders());

const locale = getLocale();
addLocaleData([...deLocaleData, ...enLocaleData]);

window.digitalData.page.pageInfo.language = locale;

render(
  <IntlProvider locale={locale} messages={translations[locale]} defaultLocale='en'>
    <StoreProvider store={store}>
      <AppRouter />
    </StoreProvider>
  </IntlProvider>,
  document.getElementById('app')
);
