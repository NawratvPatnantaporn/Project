import express, { Request, Response } from "express";
import * as dotenv from "dotenv";
import cors from "cors";
import helmet from "helmet";

import cookieParser from "cookie-parser";

import authRoutes from "../routes/auth.route"
import employeeRoutes from "../routes/employee.route"
import worklogRoutes from "../routes/worklog.route";
import { connectDB } from "../db/connectDB";

dotenv.config();

const app = express();

app.use(express.json());
app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(cors({ origin: "http://localhost:5173", credentials: true }));
app.use(helmet());

app.use("/api/auth", authRoutes);
app.use("/api/employees", employeeRoutes);
app.use("/api/worklog",worklogRoutes);

const PORT = process.env.PORT;
app.listen(PORT, () => {
  connectDB();
  console.log(`Server is listening on port ${PORT}`);
});

