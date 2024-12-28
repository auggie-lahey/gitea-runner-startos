import { compat, types as T } from "../deps.ts";

export const getConfig: T.ExpectedExports.getConfig = compat.getConfig({
  "runnerreg": {
    "name": "GITEA_RUNNER_REGISTRATION_TOKEN",
    "description": "GITEA_RUNNER_REGISTRATION_TOKEN from gitea",
    "type": "string",
    "copyable": true,
    "masked": false,
    "nullable": false,
  },
} as T.ConfigSpec);
