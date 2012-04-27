
data = require './data'
express = require 'express'
app = express.createServer()

app.use express.static(__dirname + '/public')
app.set 'view engine', 'jade'

app.configure ->
  app.get '/', (req, res) ->
    res.render('index')

  app.get '/foo', (req, res) ->
    data.load (d)->
      res.render('guess', d)

app.listen process.env.PORT || 3000

