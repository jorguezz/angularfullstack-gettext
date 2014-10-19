'use strict';

// Development specific configuration
// ==================================
module.exports = {
  // MongoDB connection options
  mongo: {
    uri: 'mongodb://localhost/angularfullstack-dev',
    options:{
      user: 'jony',
      pass: 'fullstack'
    }
  },

  seedDB: true
};
