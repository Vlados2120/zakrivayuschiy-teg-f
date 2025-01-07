name: Tests

on:
  push:
    branches:
      - '**'
    tags:
      - '**'

jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v3
      - name: Check if the repository is private
        run: exit 1
        if: ${{github.event.repository.private}}
      - name: Tests
        uses: Yandex-Practicum/test-project-action@v1
        with:
          project: 'zakrivayuschiy-teg-f'
