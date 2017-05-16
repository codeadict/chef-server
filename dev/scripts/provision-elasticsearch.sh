add-apt-repository ppa:openjdk-r/ppa
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
apt-get update 
apt-get install openjdk-8-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
apt-get install elasticsearch -y
echo "http.host: 0.0.0.0" > /etc/elasticsearch/elasticsearch.yml
service elasticsearch start
