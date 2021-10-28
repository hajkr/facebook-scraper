# Facebook scraper

Scraper for public Facebook groups.

Created using [kevinzg/facebook-scraper](https://github.com/kevinzg/facebook-scraper).

## Installation guide

```bash
git clone https://github.com/hajkr/facebook-scraper
cd facebook-scraper

make run
```

## Usage

```bash
make to_container
poetry run hajkr-facebook-scraper
```

## Publish

```bash
make to_container
poetry version patch # major|minor
poetry build
poetry publish
```
