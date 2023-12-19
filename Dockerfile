# Menggunakan base image Node.js versi 14.
FROM node:14-alpine
# Menentukan bahwa working directory untuk container adalah /app.
WORKDIR /app
# Menyalin package.json code ke working directory di container.
COPY package.json . 
# menambahkan index.js code ke working directory di container.
ADD index.js . 
# Menentukan environment variable PORT dan AMQP_URL. untuk terhubung ke rabbitmq
ENV PORT=3001 AMQP_URL=amqp://localhost:5672
# Menginstal dependencies
RUN npm install
# jalankan server dengan perintah npm start.
CMD ["npm", "run", "start"]
# mengekspose port yang digunakan oleh aplikasi
EXPOSE 3001