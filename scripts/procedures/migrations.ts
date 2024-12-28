import { compat, matches, types as T } from "../deps.ts";

export const migration: T.ExpectedExports.migration = compat.migrations
    .fromMapping({
        "10.8.9.1": {
            up: compat.migrations.updateConfig(
                (config) => {
                        return config;
                    },
                false,
                { version: "10.8.9.1", type: "up" },
              ),
              down: () => { throw new Error('Downgrades are prohibited below 10.8.9.1 due to service instabilities below 10.9.8.1') },
            },
        "10.9.7": {
            up: compat.migrations.updateConfig(
              (config) => {
                return config;
              },
              true,
              { version: "10.9.7", type: "up" }
            ),
            down: () => {
              throw new Error("Cannot downgrade due to major version database structure changes");
            },
          },
        },
    "10.10.3",
);