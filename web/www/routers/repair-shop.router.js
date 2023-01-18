import express from 'express';
import * as RepairDoctorPeer from '../blockchain/pharmaPeer';

const router = express.Router();

router.post('/api/repair-orders', async (req, res) => {
  try {
    let repairOrders = await RepairDoctorPeer.getRepairOrders();
    res.json(repairOrders);
  } catch (e) {
    console.log(e);
    res.json({ error: "Error accessing blockchain."});
  }
});

router.post('/api/complete-repair-order', async (req, res) => {
  const { uuid } = req.body;
  if (typeof uuid !== 'string') {
    res.json({ error: "Invalid request." });
    return;
  }

  try {
    await RepairDoctorPeer.completeRepairOrder(uuid);
    res.json({ success: true });
  } catch (e) {
    console.log(e);
    res.json({ error: "Error accessing blockchain." });
  }
});

router.post('/api/blocks', async (req, res) => {
  const { noOfLastBlocks } = req.body;
  if (typeof noOfLastBlocks !== 'number') {
    res.json({ error: 'Invalid request' });
  }
  try {
    const blocks = await RepairDoctorPeer.getBlocks(noOfLastBlocks);
    res.json(blocks);
  } catch (e) {
    res.json({ error: 'Error accessing blockchain.' });
  }
});

router.get('*', (req, res) => {
  res.render('repair-doctor', { pharmaActive: true });
});

function wsConfig(io) {
  RepairDoctorPeer.on('block', block => { io.emit('block', block); });
}

export default router;
export { wsConfig };
