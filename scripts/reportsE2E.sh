testUser=$(node scripts/createUser.js $1 $2);
testUserEmail=$(echo $testUser | jq -r .email);
testUserPassword=$(echo $testUser | jq -r .password);
devEmail=$(echo $testUser | jq -r .devEmail);
devPassword=$(echo $testUser | jq -r .devPassword);
vue-cli-service test:e2e --env TESTER_EMAIL=$testUserEmail,TESTER_PASSWORD=$testUserPassword,DEV_EMAIL=$devEmail,DEV_PASSWORD=$devPassword;