const core = require('@actions/core');
const github = require('@actions/github');

try {

  // Load configuration
  const

    // compose-file input defined in action metadata file
    composeFile = core.getInput('compose-file'),

    // The docker-compose command to run 
    composeCommand = core.getInput('command'),

    // Get the JSON webhook payload for the event that triggered the workflow
    eventPayload = JSON.stringify(github.context.payload, undefined, 2);

  console.log(`composeFile: ${composeFile}`);
  console.log(`composeCommand: ${composeFile}`);
  console.log(`eventPayload: ${eventPayload}`);

} catch (error) {
  core.setFailed(error.message);
}