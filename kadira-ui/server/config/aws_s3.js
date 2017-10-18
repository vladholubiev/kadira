Meteor.startup(function() {
  Meteor.settings.public.s3Url = process.env.AWS_S3_URL;
});