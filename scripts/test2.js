let devEmail = process.argv[2] || process.env.CYPRESS_DEV_EMAIL;
let devPassword = process.argv[3] || process.env.CYPRESS_DEV_PASSWORD;

process.stdout.write(`{
  "devEmail": "${devEmail}", "devPassword": "${devPassword}"
}`);
