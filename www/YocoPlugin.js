var exec = require('cordova/exec');

module.exports.registerSDK = function (arg0, success, error) {
    exec(success, error, 'YocoPlugin', 'registerSDK', [arg0]);
}
