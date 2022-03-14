const { environment } = require('@rails/webpacker')
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    
    popper: ['popper.js', 'default']
}))

const devtool = process.env.DEVTOOL;
if (devtool) environment.config.merge({ devtool });

module.exports = environment
