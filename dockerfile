# 1️⃣ Base image (Node environment)
FROM node:22-alpine

# 2️⃣ App directory inside container
WORKDIR /app

# 3️⃣ Package files copy
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy full project
COPY . .

# 6️⃣ Build project
RUN npm run build

# 7️⃣ App port
EXPOSE 3000

# 8️⃣ Start app
CMD ["npm", "start"]
