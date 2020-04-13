# searchQuotesNodeElasticDocker

This repo demonstrates how to implement Full-text search with Node.js and ElasticSearch on Docker
<br/>
Source: https://dev.to/bnevilleoneill/full-text-search-with-node-js-and-elasticsearch-on-docker-146k?utm_source=dormosheio&utm_campaign=dormosheio
<br/>

## Instructions to use:
1) From the project root folder, run `docker-compose build`
2) Then run `docker-compose up`
3) launch the browser and go to, `http://localhost:3000/quotes?text=love`, which should getAllQuotes matching text="love". To limit the result set, add query string params like "&limit=5&page=1" which allows records per page and page number
