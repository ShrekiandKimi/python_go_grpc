# python_go_grpc

Сервис gRPC (Go) + клиент Django + nginx с взаимной аутентификацией TLS (ПР 4).
Сертификаты: `sh certs.sh` (cfssl). Запуск: `go run server/server.go`, `python manage.py runserver`, `nginx -p $(pwd) -c nginx.conf`.
