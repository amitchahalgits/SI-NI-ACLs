data_dir = "/opt/consul"
log_level = "DEBUG"
node_name = "dashboard" 

bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"

retry_join = ["consul-server"]

connect {
  enabled = true
}

ports {
  grpc = 8502
}

acl {
  enabled = true
  default_policy = "deny"
  enable_token_persistence = true
  tokens {
    agent = "6294167e-06d8-4672-a1fe-8ffb90a00b64"
  }
}
