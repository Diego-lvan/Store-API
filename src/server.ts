import express from "express";
import "dotenv/config";
import cors from "cors";
import { authRouter, productsRouter, salesRouter, reviewRouter, userRouter } from "./routes";
import "./config/conn";
import path from "path";
const app = express();
const PORT = process.env.PORT! || 5000;

app.use(cors());
app.use(express.json());
const config = { extensions: ["png", "jpg", "svg", "jpeg"] };
app.use(express.static(path.join("upload"), config));

app.use(authRouter, productsRouter, salesRouter, reviewRouter, userRouter);

app.listen(PORT || 5000, () => {
  console.log(`listening in port ${PORT || 5000}`);
});
