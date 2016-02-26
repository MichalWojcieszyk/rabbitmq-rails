# Simple rails app with RabbitMQ and Sneakers


### Preparation
- Install rabbitmq
- Install redis
- Starting rmq: `rabbitmq-server`
- Starting redis: `redis-server`

### Sender app
- `cd sender`
- Setup queues: `rake rabbitmq:setup`
- Setup database: `rake db:migrate`
- `rails server -p 3000`

### Receiver and Worker
- `cd receiver`
- `rake sneakers:run`

### Receiver app
- `cd receiver`
- `rails server -p 3001`