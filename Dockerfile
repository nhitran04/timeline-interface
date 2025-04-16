# Dockerfile
FROM nginx:alpine

# Copy content 
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html 

# Create directories for organization 
RUN mkdir -p /usr/share/nginx/html/actions
RUN mkdir -p /usr/share/nginx/html/goals
RUN mkdir -p /usr/share/nginx/html/both

EXPOSE 8080 
