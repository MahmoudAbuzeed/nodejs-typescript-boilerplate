import { Request, Response } from "express";

export const getProd = async (req: Request, res: Response) => {
  return res.json({ Hello: "Hello World" });
};
