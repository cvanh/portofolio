// https://stackoverflow.com/questions/66896774/how-to-add-domains-to-next-config-js-for-next-image-while-using-a-plugin
const withImages = require("next-images");

module.exports = withImages({
    images: {
        domains: ['imaretarded.dev']
    },
    webpack(config, options) {
        return config;
    }
});
