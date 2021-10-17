const core = require('@actions/core')
const openapi = require("@openapitools/openapi-generator-cli")

try  {
    const api_spec = core.getInput('api-spec');
    console.log(`api-spec: ${api_spec}`);
    
    console.log(`${openapi}`);

    const time = (new Date()).toTimeString();
    core.setOutput("time", time);

} catch (error) {
    core.setFailed(error.message)
}
