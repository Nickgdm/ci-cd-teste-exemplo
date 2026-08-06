FROM cypress/included:latest
WORKDIR /e2e

#copia os arquivos essenciais do projeto
COPY package.json .
COPY package-lock.json .
COPY cypress.config.js .
COPY cypress ./cypress

#instala dependencias do projeto
RUN npm install

#comando padrão para rodar os teste
CMD [ "cypress", "run" ]