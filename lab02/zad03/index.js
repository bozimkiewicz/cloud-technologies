import express from "express"
import { MongoClient } from "mongodb"

const app = express();
const client = new MongoClient("mongodb://mongo:27017/")

app.get("/", async (req, res) => {
  await client.connect()

  const data = await client.db('test').stats()
  res.status(200).json(data)

  client.close()
});

app.listen(8080);
