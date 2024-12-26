const { Given, When, Then } = require('@cucumber/cucumber');

Given('the user is on the login page', function () {
    console.log('User navigates to login page');
});

When('the user enters valid credentials', function () {
    console.log('User enters credentials');
});

Then('the user is redirected to the dashboard', function () {
    console.log('User is redirected to dashboard');
});
