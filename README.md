# Request Header Parser Microservice

https://www.freecodecamp.org/learn/apis-and-microservices/apis-and-microservices-projects/request-header-parser-microservice


## Example Requests
http://localhost:3000/api/whoami
```bash
{
    "language": "application/json",
    "remote_ip": "127.0.0.1",
    "software": "PostmanRuntime/7.28.2",
    "url": "http://localhost:3000/api/whoami",
    "path": "/api/whoami",
    "method": "GET"
}
```

http://localhost:3000/api/whoami?info=language
```bash
{
    "response": "application/json"
}
```

http://localhost:3000/api/whoami?info=software
```bash
{
  "response":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"
}
```

http://localhost:3000/api/whoami?info=ipaddress
```bash
{
    "response": "127.0.0.1"
}
```

http://localhost:3000/api/whoami?info=url
```bash
{
    "response": "http://localhost:3000/api/whoami?info=url"
}
```

http://localhost:3000/api/whoami?info=path
```bash
{
    "response": "/api/whoami?info=path"
}
```

http://localhost:3000/api/whoami?info=method
```bash
{
    "response": "GET"
}
```