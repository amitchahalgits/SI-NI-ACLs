service {
  name = "counting"
  port = 9003
  token = "9c15510e-3820-2054-b58f-b3bbfd77b752"
  connect {
    sidecar_service {}
  }

  check {
    id       = "counting-check"
    http     = "http://localhost:9003/health"
    method   = "GET"
    interval = "10s"
    timeout  = "1s"
  }
}

