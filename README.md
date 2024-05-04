### Hexlet tests and linter status:
[![Actions Status](https://github.com/ivMokretsov/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/ivMokretsov/devops-for-programmers-project-76/actions)

[![hexlet-check](https://github.com/ivMokretsov/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/ivMokretsov/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml)

## Демо проекта: https://mokretsov.ru
> сервера могут быть отключены. в случае необходимости проверки просьба написать в MM =)

### Требуемые зависимости:
- Ansible
- Make


### Шаги для деплоя приложения Redmine:

1) Cклонировать репозиторий и перейти в директорию проекта
2) В inventory.yml добавить сервера, на которых будет развернут сервис. Можно проверить доступность серверов:
    ```
    make ping-hosts
    ```
3) Установить необходимые зависимости на локальную машину:
    ```
    make install-dependencies
    ```
4) В файле group_vars/webservers/vars.yml указать необходимые переменные.

6) Запустить деплой командой:
    ```
    make deploy-application 
    ```
