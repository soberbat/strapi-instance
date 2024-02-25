module.exports = ({ env }) => ({
  upload: {
    config: {
      provider: "@strapi-community/strapi-provider-upload-google-cloud-storage",
      providerOptions: {
        bucketName: env("BUCKET_NAME"),
        publicFiles: true,
        uniform: false,
        basePath: "",
      },
    },
  },
});
