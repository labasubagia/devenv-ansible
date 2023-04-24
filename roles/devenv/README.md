# Devenv

Local development environment

## Requirements

None

## Role Variables

```yaml
- user: dev
```

## Dependencies

- community.general

## Example Playbook

Example setup local development:

```yaml
- hosts: localhost
  connection: local
  become: true
  roles:
    - role: devenv
      user: dev
```

## License

Licensed under [MIT License](https://opensource.org/licenses/MIT)
