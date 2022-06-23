FROM    node:18

LABEL author="tkerel330"

RUN mkdir -p /usr/src/app

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/app

# Set working directory context
WORKDIR /usr/src/app

# WORKDIR /var/www/
COPY    package.json package-lock.json ./

RUN npm install

# COPY    . ./ 
# EXPOSE  $PORT

# RUN     echo "Build version: $build"

ENTRYPOINT ["node", "app.js"]
