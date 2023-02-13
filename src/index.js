async function lambdaHandler(event, context) {
    return {
        message: 'Hello world 2'
    }
}

module.exports = {
    lambdaHandler
}