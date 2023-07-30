data_dir = "/opt/consul"
log_level = "DEBUG"
node_name = "counting" 

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
    agent = "67eb4644-9392-2e70-83c1-c47f9f88f4e1"
  }
}
