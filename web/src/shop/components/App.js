'use strict';

import React, { Props } from 'react';
import PropTypes from 'prop-types';
import { FormattedMessage } from 'react-intl';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';

const app = ({ children, shopType }) => {
  let shopHeadingMessage;
  switch (shopType) {
    case 'bikes':
      shopHeadingMessage = <FormattedMessage id='Bike Doctor' />;
      break;
    case 'smart-phones':
      shopHeadingMessage = <FormattedMessage id='Smart Phone Doctor' />;
      break;
    case 'skis':
      shopHeadingMessage = <FormattedMessage id='Ski Doctor' />;
      break;
  }

  const shopWrapper = (
    <div>
      <div className='ibm-columns'>
        <div className='ibm-col-1-1'>
          <h2 className='ibm-h2'>{shopHeadingMessage}</h2>
        </div>
      </div>
      {children}
    </div>
  );

  const defaultWrapper = (
    <div className='main-content'>
      {children}
    </div>
  );

  return shopHeadingMessage ? shopWrapper : defaultWrapper;
};

app.propTypes = {
  shopType: PropTypes.string
};

function mapStateToProps(state, ownProps) {
  return {
    shopType: state.doctor.type
  };
}

export default withRouter(connect(mapStateToProps)(app));


