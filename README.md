### Hexlet tests and linter status:
[![Actions Status](https://github.com/ivMokretsov/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/ivMokretsov/devops-for-programmers-project-76/actions)

## Демо проекта: https://mokretsov.ru
> сервера могут быть отключены. в случае необходимости проверки просьба написать в MM =)

### Требуемые зависимости:
- Ansible
- Make


### Шаги для деплоя приложения Redmine:

1) Cклонировать репозиторий и перейти в директорию проекта
2) В inventory.yml добавить сервера, на которых будет развернут сервис
можно проверить доступность серверов:
    ```
    make ping-hosts
    ```
3) Установить необходимые зависимости на локальную машину:
    ```
    make install-dependencies
    ```
4) В директории проекта создать файл vault_pass и записать в него свой пароль
В файл group_vars/webservers/vault.yml добавить секреты
    >REDMINE_DB_PASSWORD_VAULT: <REDMINE_DB_PASSWORD>
    >datadog_api_key_vault: <datadog_api_key>

    Зашифровать файл командой:
    ```
    make encrypt-vault
    ```
5) В файле group_vars/webservers/vars.yml указать переменные для базы данных:
    >REDMINE_DB_POSTGRES: <db_ip>
    >REDMINE_DB_USERNAME: <db_user>
    >REDMINE_DB_DATABASE: <db_name>

6) Запустить деплой командой:
    ```
    make deploy-application 
    ```