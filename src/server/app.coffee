'use strict'

ndx = require 'ndx-server'
.config
  database: 'db'
  tables: ['users']
  localStorage: './data'
.use 'ndx-static-routes'
.use 'ndx-gmail'
.controller (ndx) ->
  ndx.gmail.send
    template: 'mail.jade'
    subject: 'test email 5'
  , (err) ->
    if not err
      console.log 'email sent succesfully'
.start()
