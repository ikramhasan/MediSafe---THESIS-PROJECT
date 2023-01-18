'use strict';

import { Server } from 'http';
import express from 'express';
import socketIo from 'socket.io';
import configureExpress from './config/express';
import doctorRouter, { wsConfig as shopWsConfig }
  from './routers/doctor.router';
import patientRouter, { wsConfig as policeWsConfig }
  from './routers/patient.router';
import pharmaRouter, { wsConfig as pharmaWsConfig }
  from './routers/pharmaRouter.router';
import insuranceRouter, { wsConfig as insuranceWsConfig }
  from './routers/insurance.router';

const INSURANCE_ROOT_URL = '/insurance';
const PATIENT_ROOT_URL = '/patient';
const PHARMA_ROOT_URL = '/pharmaRouter';
const DOCTOR_ROOT_URL = '/doctor';

const app = express();
const httpServer = new Server(app);

// Setup web sockets
const io = socketIo(httpServer);
shopWsConfig(io.of(DOCTOR_ROOT_URL));
policeWsConfig(io.of(PATIENT_ROOT_URL));
pharmaWsConfig(io.of(PHARMA_ROOT_URL));
insuranceWsConfig(io.of(INSURANCE_ROOT_URL));

configureExpress(app);

app.get('/', (req, res) => {
  res.render('home', { homeActive: true });
});

// Setup routing
app.use(DOCTOR_ROOT_URL, doctorRouter);
app.use(PATIENT_ROOT_URL, patientRouter);
app.use(PHARMA_ROOT_URL, pharmaRouter);
app.use(INSURANCE_ROOT_URL, insuranceRouter);

export default httpServer;
