FROM node:19.3.0

#작업경로 이동
WORKDIR /my-app

#소스코드 배포
COPY package.json /my-app/
COPY src /my-app/src
COPY public /my-app/public

#모듈 
RUN npm install 

#실행
CMD [ "npm", "start" ]

