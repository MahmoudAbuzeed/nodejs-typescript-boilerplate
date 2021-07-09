import { Router } from "express";
import product from "./routes/product";

// guaranteed to get dependencies
export default () => {
  const app = Router();
  product(app);

  return app;
};
