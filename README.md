# Welcome in the **zatsit** technologies landscape

This repository contains necessary files to build the **zatsit** technology landscape based on the [CNCF Landscape project](https://github.com/cncf/landscape2).

## Notice

- **zatsit-landscape.yml**:
The landscape contains some categories and subcategories inherited from the CNCF and some custom categories from **zatsit**.
- **guide.yml**:
The guide help us to higlight some categories of technology.
- **logo**:
This folder contains all the technology logos in SVG format. Use [SVGrepo](https://www.svgrepo.com) to find and download specific logos.
- **settings.xml**: contains all metadata of the landscape (social links), defines groups or specific highlighting of technology.

## Installation

According to the [README](https://github.com/cncf/landscape2?tab=readme-ov-file#installation) of the CNCF Landscape, you can install landscape via shell or powerShell or Homebrew or use a container or build it from sources.

## Build

Following the [README](https://github.com/cncf/landscape2?tab=readme-ov-file#usage), you can create your own landscape, play with setting and understand how it is generated.

For the **zatsit**-landscape, you can build the project this way :

```sh
landscape2 build \
  --data-file global/zatsit-landscape.yml \
  --settings-file global/settings.yml \
  --guide-file global/guide.yml \
  --logos-path logos \
  --output-dir build

```

Adding API Keys/tokens, you can have more informations about technicals product :

- a list of comma separated GitHub tokens (or just one) to retrieve repository statistics and data, visit [https://github.com/settings/tokens](https://github.com/settings/tokens).
- Crunchbase API Key to retrieve data for the organisation behind an technical solution, visit [https://www.crunchbase.com/account/integrations/crunchbase-api](https://www.crunchbase.com/account/integrations/crunchbase-api) to create a key.

Then export them in your environment :

```sh
export GITHUB_TOKENS=XXXXXXXXXXXXXX
```

```sh
export CRUNCHBASE_API_KEY=YYYYYYYYYYYYY
```

The landscape2 tool will detect them and use them.

> **Recommandation** : Use the API keys when you think you have finished your work. If you build a lot of times the landscape, you should unset the variables of those keys : it will not consume resources for nothing, the build time will be shorter and your API Key quota (or rate limit) will not be affected.

To serve it locally (in your **zatsit**-landscape folder) :

```sh
landscape2 serve --landscape-dir build
```

By default, it will be available on [http://127.0.0.1:8000](http://127.0.0.1:8000)
