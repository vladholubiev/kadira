Meteor.startup(function() {
  if (Meteor.users.find().count() < 1) {
    Accounts.createUser({
      username: 'admin',
      email: 'admin@gmail.com',
      password: 'admin'
    });

    console.log('CREATED ADMIN USER (admin@gmail.com/admin). CHANGE PASSWORD');
  }

  Accounts.onCreateUser(function() {
    throw new Error('Access Denied');
  });
});
