const core = require('@actions/core')
const github = require('@actions/github')


try  {
    const api_spec = core.getInput('api-spec');
    console.log(`api-spec: ${api_spec}`);

    const time = (new Date()).toTimeString();
    core.setOutput("time", time);

    const payload = JSON.stringify(github.context.payload, undefined, 2);
    console.log(`the event payload: ${payload}`);

} catch (error) {
    core.setFailed(error.message)
}
