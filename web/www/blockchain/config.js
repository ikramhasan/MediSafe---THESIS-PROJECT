import { readFileSync } from 'fs';
import { resolve } from 'path';

const basePath = resolve(__dirname, '../../certs');
const readCryptoFile =
  filename => readFileSync(resolve(basePath, filename)).toString();
const config = {
  isCloud: false,
  isUbuntu: true,
  channelName: 'default',
  channelConfig: readFileSync(resolve(__dirname, '../../channel.tx')),
  chaincodeId: 'bcins',
  chaincodeVersion: 'v2',
  chaincodePath: 'bcins',
  orderer0: {
    hostname: 'orderer0',
    url: 'grpcs://orderer0:7050',
    pem: readCryptoFile('ordererOrg.pem')
  },
  insuranceOrg: {
    peer: {
      hostname: 'insurance-peer',
      url: 'grpcs://insurance-peer:7051',
      eventHubUrl: 'grpcs://insurance-peer:7053',
      pem: readCryptoFile('insuranceOrg.pem')
    },
    ca: {
      hostname: 'insurance-ca',
      url: 'https://insurance-ca:7054',
      mspId: 'InsuranceOrgMSP'
    },
    admin: {
      key: readCryptoFile('Admin@insurance-org-key.pem'),
      cert: readCryptoFile('Admin@insurance-org-cert.pem')
    }
  },
  policeOrg: {
    peer: {
      hostname: 'police-peer',
      url: 'grpcs://police-peer:7051',
      eventHubUrl: 'grpcs://police-peer:7053',
      pem: readCryptoFile('policeOrg.pem')
    },
    ca: {
      hostname: 'police-ca',
      url: 'https://police-ca:7054',
      mspId: 'PoliceOrgMSP'
    },
    admin: {
      key: readCryptoFile('Admin@police-org-key.pem'),
      cert: readCryptoFile('Admin@police-org-cert.pem')
    }
  },
  shopOrg: {
    peer: {
      hostname: 'shop-peer',
      url: 'grpcs://shop-peer:7051',
      eventHubUrl: 'grpcs://shop-peer:7053',
      pem: readCryptoFile('shopOrg.pem')
    },
    ca: {
      hostname: 'shop-ca',
      url: 'https://shop-ca:7054',
      mspId: 'ShopOrgMSP'
    },
    admin: {
      key: readCryptoFile('Admin@shop-org-key.pem'),
      cert: readCryptoFile('Admin@shop-org-cert.pem')
    }
  },
  repairShopOrg: {
    peer: {
      hostname: 'repairshop-peer',
      url: 'grpcs://repairshop-peer:7051',
      pem: readCryptoFile('repairShopOrg.pem'),
      eventHubUrl: 'grpcs://repairshop-peer:7053',
    },
    ca: {
      hostname: 'repairshop-ca',
      url: 'https://repairshop-ca:7054',
      mspId: 'RepairShopOrgMSP'
    },
    admin: {
      key: readCryptoFile('Admin@repairshop-org-key.pem'),
      cert: readCryptoFile('Admin@repairshop-org-cert.pem')
    }
  }
};

if (process.env.LOCALCONFIG) {
  config.orderer0.url = 'grpcs://localhost:7050';

  config.insuranceOrg.peer.url = 'grpcs://localhost:7051';
  config.shopOrg.peer.url = 'grpcs://localhost:8051';
  config.repairShopOrg.peer.url = 'grpcs://localhost:9051';
  config.policeOrg.peer.url = 'grpcs://localhost:10051';

  config.insuranceOrg.peer.eventHubUrl = 'grpcs://localhost:7053';
  config.shopOrg.peer.eventHubUrl = 'grpcs://localhost:8053';
  config.repairShopOrg.peer.eventHubUrl = 'grpcs://localhost:9053';
  config.policeOrg.peer.eventHubUrl = 'grpcs://localhost:10053';

  config.insuranceOrg.ca.url = 'https://localhost:7054';
  config.shopOrg.ca.url = 'https://localhost:8054';
  config.repairShopOrg.ca.url = 'https://localhost:9054';
  config.policeOrg.ca.url = 'https://localhost:10054';
}

export default config;

export const DEFAULT_CONTRACT_TYPES = [
  {
    uuid: '63ef076a-33a1-41d2-a9bc-2777505b014f',
    shopType: 'B',
    formulaPerDay: 'price * 0.01 + 0.05',
    maxSumInsured: 4300.00,
    theftInsured: true,
    description: 'Health Insurance Portability and Accountability Act',
    conditions: 'Patient health information cannot be disclosed without the patient’s consent or knowledge',
    minDurationDays: 1,
    maxDurationDays: 7,
    active: true
  },
];
