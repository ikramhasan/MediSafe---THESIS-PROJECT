import express from 'express';

import * as PolicePeer from '../blockchain/policePeer';

const router = express.Router();

router.get('/', (req, res) => {
  res.render('police', { policeActive: true });
});

function generatePassword() {
  let passwordType = Math.floor(Math.random() * 4);
  let password;
  switch (passwordType) {
    case 0:
      password = 'test';
      break;
    case 1:
      password = 'demo';
      break;
    case 2:
      password = 'pass';
      break;
    case 3:
      password = 'secret';
      break;
    case 4:
    default:
      password = 'qwerty';
  }
  password += Math.floor(Math.random() * (99 - 10) + 10);
  return password;
}

router.post('/api/claims', async (req, res) => {
  console.log("hi");
  try {
    const theftClaims = await PolicePeer.listTheftClaims();
    res.json(theftClaims || []);
  } catch (e) {
    res.json({ error: 'Error accessing blockchain.' });
  }
});

router.post('/api/process-claim', async (req, res) => {
  const { contractUuid, uuid, isTheft, fileReference } = req.body;
  if (typeof contractUuid !== 'string'
    || typeof uuid !== 'string'
    || typeof isTheft !== 'boolean'
    || typeof fileReference !== 'string') {
    res.json({ error: 'Invalid request.' });
    return;
  }

  try {
    await PolicePeer.processTheftClaim({
      contractUuid, uuid, isTheft, fileReference
    });
    res.json({ success: true, uuid });
  } catch (e) {
    res.json({ error: 'Error accessing blockchain.' });
  }
});

router.post('/api/register-patient', async (req, res) => {
  console.log("hi");
  try {
    let { user } = req.body;
    let { firstName, lastName, email } = user || {};
    if (typeof user === 'object' &&
      typeof firstName === 'string' &&
      typeof lastName === 'string' &&
      typeof email === 'string') {
      
      let passwordProposal = generatePassword();
      try {
        let responseUser = await PolicePeer.registerPatient({
          username: email,
          firstName: firstName,
          lastName: lastName,
          password: passwordProposal
        });
        res.json(responseUser || { username: email, password: passwordProposal });
      } catch (e) {
        console.log(e);
        res.json({ error: 'Could not create new user!' });
      }
    } else {
      res.json({ error: 'Invalid request!' });
    }
  } catch (error) {
    console.log(error); 
  }
});

function wsConfig(io) {
  PolicePeer.on('block', block => { io.emit('block', block); });
}

export default router;
export { wsConfig };
