# Aton Internship Task 2

## Введение

У меня уже есть сайт ([goose-loop.online](https://goose-loop.online/)), который полностью подходит под данное задание. Я лишь немного модифицировал Docker Compose файл и написал Dockerfile.

> **Примечание**: У моего основного сайта SSL-сертификаты выданы через Certbot и браузеры на них не ругаются. В этом проекте используются обычные сертификаты через сервис OpenSSL, и некоторые браузеры могут выдавать предупреждения. В остальном отличий от моего обычного сайта нет.

## Как с этим работать

### Запуск

Создаем образ

```bash
docker-compose up -d
```

### Остановка

```bash
docker-compose down
```
