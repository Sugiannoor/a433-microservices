#Shipping service
FROM node:18-alpine

 #mendefinisikan working directory
WORKDIR /src

RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

#copy semua file yang ada di path default ke image yang ada di path default juga
COPY . .

#menginstall dependency
RUN npm install

#ekspose
EXPOSE 3001

#menjalankan server ketika container dijalankan
CMD ["npm", "start"]