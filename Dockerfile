FROM node:14

RUN adduser ethnetintel

ADD ./ /home/ethnetintel/eth-net-intelligence-api
WORKDIR /home/ethnetintel/eth-net-intelligence-api
RUN npm -g install


RUN chown -R ethnetintel. /home/ethnetintel

USER ethnetintel
CMD ["/usr/local/bin/node", "/home/ethnetintel/eth-net-intelligence-api/app.js"]
