# local-ai-playground

It's a meta repository and some docker compose configuration file to run a development enviroment and test generative AI in localhost.

In particular you can play with:

- [LocalAI](https://localai.io/)
- [Flowise](https://flowiseai.com/) and under the hood [Langchain](https://python.langchain.com/)
- [chroma](https://docs.trychroma.com/)
- [ollama](https://github.com/jmorganca/ollama)

## Requirements

I tested this project only on Linux / WSL2 systems. You need to have this software installed in you machine:

- [docker](https://www.docker.com/)
- [docker-compose](https://www.docker.com/)
- [meta repo](https://github.com/mateodelnorte/meta)
- make

## Run Locally

Clone the project

```bash
  meta git clone git@github.com:capitanfuturo/local-ai-playground.git
```

Go to the project directory

```bash
  cd local-ai-playground
```

Install some LLM models to start play with

```bash
  make init
```

Start the containers compose

```bash
  make up
```

## Authors

- [@capitanfuturo](https://github.com/capitanfuturo)
