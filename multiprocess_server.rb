require 'yaml'
require 'simple_worker'

ServerEngine.create(nil, SimpleWorker, {
  daemonize: true,
  log: 'server.log',
  pid_path: 'server.pid',
  daemon_process_name: 'se-server',
  worker_process_name: "se-worker",
  worker_type: 'process',
  workers: 2,
}).run
