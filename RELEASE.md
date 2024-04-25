# Релиз и публикация

### Предварительные требования

Установите зависимости:

```bash
npm ci
```

Убедитесь, что вы залогинены в `npm`, для этого выполните команду:

```bash
npm whoami
```

Если вы не залогинены, залогинтесь:

```bash
npm login
```

Все изменения должны быть закомичены в `master`.

### Релиз и публикация

Выполните команду, где `x.x.x` - это новая версия пакета, например `2.0.1`:

```bash
VERSION=x.x.x npm run release
```