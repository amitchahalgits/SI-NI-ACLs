service {
  name = "dashboard"
  port = 9002
  token = "ef7e5f97-78c0-f1ea-9ee0-dff7112834dd"
  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "counting"
            local_bind_port  = 5000
          }
        ]
      }
    }
  }

  check {
    id       = "dashboard-check"
    http     = "http://localhost:9002/health"
    method   = "GET"
    interval = "10s"
    timeout  = "1s"
  }
}

