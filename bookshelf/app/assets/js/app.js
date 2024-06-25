//import "../css/app.css";
//import * as assets from "hanami-assets";


await assets.run({
  esbuildOptionsFn: (args, esbuildOptions) => {
    esbuildOptions.logLevel = "verbose";

    return esbuildOptions;
  },
});
