FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/Xcelsama/STAR.MD.V2  /root/Xcelsama

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Xcelsama/node_modules

# Install dependencies
WORKDIR /root/Xcelsama
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]

