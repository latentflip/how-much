csv = require('csv')


exports.load = (callback) ->
  rows = []
  csv()
  .fromPath(__dirname+'/data/creative_scotland.csv')
  .transform((data) ->
    data.unshift(data.pop())
    data
  )
  .on('data', (data,index) ->
    rows.push({
      price: data[3],
      description: data[0]
    })
  )
  .on('error',(error) ->
      console.log(error.message)
  )
  .on('end', ->
    n = rows.length + 1
    randomnumber=Math.floor(Math.random()*n)
    console.log randomnumber
    callback(rows[randomnumber])
  )

