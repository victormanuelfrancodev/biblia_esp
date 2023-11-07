import { Cromo } from 'cromo'
import { cors } from './middleware/cors'

const cromo = new Cromo({
  dir: './api',
  port: 3000,
})

cromo.setMiddleware([cors])
cromo.start(port => {
  console.log(`Server running on port ${port}`)
})
