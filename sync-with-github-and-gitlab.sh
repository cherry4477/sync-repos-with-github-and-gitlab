#!/bin/sh

BASE_REPOS_DIR='/root/github.com/asiainfoLDP/'
#export GITCREDENTIAL="${BASE_REPOS_DIR}/../.git-credentials"
#export GIT_CONFIG="${BASE_REPOS_DIR}/../.gitconfig"


export DF="LDP_DF"
export DH="LDP_DH"

sync_repo() {
    echo "preparing to sync ${1} ${2}..."
    cd ${BASE_REPOS_DIR}
    if [ ! -d ${2}.git ];then
        git clone --mirror https://github.com/asiainfoLDP/$2
        cd ${2}.git/
    else 
        cd ${2}.git
        git fetch --all --prune
    fi
    git push --prune --tags -f http://10.1.236.101:9700/${1}/${2}.git
    git push --prune --all -f http://10.1.236.101:9700/${1}/${2}.git
}

sync_repo_dh() {
    sync_repo LDP_DH $1
}

sync_repo_df() {
    sync_repo LDP_DF $1
}


# all repos under LDP_DH

sync_repo_dh api-gateway-datahub
sync_repo_dh datahub
sync_repo_dh datahub-mysql-for-api
sync_repo_dh datahub-mysqlclinet
sync_repo_dh datahub_alarm
sync_repo_dh datahub_api_gateway
sync_repo_dh datahub_api_server
sync_repo_dh datahub_api_specification
sync_repo_dh datahub_backlog
sync_repo_dh datahub_bill
sync_repo_dh datahub_comments
sync_repo_dh datahub_commons
sync_repo_dh datahub_custom
sync_repo_dh datahub_docs
sync_repo_dh datahub_documentation
sync_repo_dh datahub_documents
sync_repo_dh datahub_filebackup
sync_repo_dh datahub_find_similiars
sync_repo_dh datahub_heartbeat
sync_repo_dh datahub_kafka
sync_repo_dh datahub_messages
sync_repo_dh datahub_product_yaml
sync_repo_dh datahub_repository
sync_repo_dh datahub_service_discovery
sync_repo_dh datahub_stars
sync_repo_dh datahub_subscriptions
sync_repo_dh datahub_synchro
sync_repo_dh datahub_user
sync_repo_dh datahub_web
sync_repo_dh datahub_web_admin
sync_repo_dh datahub_web_new
sync_repo_dh datahub_wordpress
sync_repo_dh LdpApiCreditServer
sync_repo_dh LdpApiGateWay
sync_repo_dh LdpApiLocationServer
sync_repo_dh LdpApiRtbServer
sync_repo_dh WEBCLI-DAEMON
sync_repo_dh gz_docs
sync_repo_dh webBroadcast
sync_repo_dh datahub_web_advanced
sync_repo_dh datahub_swagger
#repos under LDP_DF


#sync_repo_df alarm
#sync_repo_df ansible-sersync-heketi
sync_repo_df apache-nifi-ocrhestration
#sync_repo_df asiainfoLDP
#sync_repo_df awesome-github
#sync_repo_df baseimage-java
#sync_repo_df broker
sync_repo_df datahub_servicebroker
sync_repo_df cassandra-openshift-orchestration
#sync_repo_df cf-containers-broker
#sync_repo_df cf-mssql-broker
#sync_repo_df cf-oracle-servicebroker
#sync_repo_df cloudformation-broker
#sync_repo_df cloudfoundry-ftp-service-broker
#sync_repo_df CMS
#sync_repo_df contentful
sync_repo_df custom-docker-builder
#sync_repo_df CYC_CMS
sync_repo_df datafactory
#sync_repo_df datafactory-codeview
#sync_repo_df datafactory-kubedash
#sync_repo_df datafactory-ldap
#sync_repo_df datafactory-mysql-broker-nodejs
#sync_repo_df datafactory-openshift-deployment
sync_repo_df datafactory-rds-broker
#sync_repo_df datafactory-servicebroker-example
sync_repo_df datafactory-servicebroker-mysql
sync_repo_df datafactory-stepbystep
sync_repo_df datafoundry-gitter
sync_repo_df datafoundry-troubleshooting
sync_repo_df datafoundry_appmarket
sync_repo_df datafoundry_backlog
sync_repo_df datafoundry_oauth2
sync_repo_df datafoundry_plan
sync_repo_df datafoundry_proxy
sync_repo_df datafoundry_servicebroker_go
sync_repo_df datafoundry_servicebroker_hadoop
sync_repo_df datafoundry_servicebroker_marathon
sync_repo_df datafoundry_servicebroker_mysql
sync_repo_df datafoundry_servicebroker_ocdp
sync_repo_df datafoundry_servicebroker_openshift
sync_repo_df datafoundry_servicebroker_redis
#sync_repo_df datafoundry_slack
sync_repo_df datafoundry_web
sync_repo_df data_resource_planning
#sync_repo_df devenv
#sync_repo_df distribution
#sync_repo_df docker-2048
#sync_repo_df docker-backup-to-s3
#sync_repo_df docker-image-sync
#sync_repo_df docker-kafka
#sync_repo_df docker-mysql-backup
#sync_repo_df docker-openldap
#sync_repo_df ecs-cf-service-broker
#sync_repo_df elasticsreach_k8s
#sync_repo_df elk
#sync_repo_df etcd
sync_repo_df etcd-openshift-orchestration
#sync_repo_df farmer
#sync_repo_df findtrip
#sync_repo_df gentelella
sync_repo_df gitbook-server
#sync_repo_df github-service-broker-ruby
#sync_repo_df gitlab
#sync_repo_df go-ldap
#sync_repo_df go-messenger
#sync_repo_df go_docker_build_test
#sync_repo_df haas-broker
#sync_repo_df hackathon2016
#sync_repo_df hadoop-cluster-docker
sync_repo_df harbor
#sync_repo_df hawqdb-service-broker
#sync_repo_df hdfs-broker
#sync_repo_df hekti-gluster-install
sync_repo_df helloworld
#sync_repo_df hongzhifu-plan
#sync_repo_df ih-cassandra-service-broker
#sync_repo_df incubator-ranger
#sync_repo_df JMeter2.1.3
sync_repo_df kafka-openshift-orchestration
sync_repo_df kettle-service-ocrhestration
sync_repo_df kubernetes
#sync_repo_df memcache-broker
#sync_repo_df memsql-service-broker
sync_repo_df meta-azure-service-broker
#sync_repo_df mongobackup-s3
#sync_repo_df mysql_5.5.utf8
#sync_repo_df new-relic-service-broker
#sync_repo_df nginx
#sync_repo_df nginx-registry
#sync_repo_df node-evacute
#sync_repo_df nodejs_web
#sync_repo_df Openrefine
#sync_repo_df openshift-ansible
sync_repo_df openshift-orchestration
#sync_repo_df oper_guide
#sync_repo_df origin
#sync_repo_df pace
#sync_repo_df partner
sync_repo_df phpRedisAdmin-openshift-orchestration
#sync_repo_df pm-guide
#sync_repo_df postgresql-cf-service-broker
sync_repo_df rabbitmq-openshift-orchestration
#sync_repo_df redis
sync_repo_df redis-openshift-orchestration
#sync_repo_df redis-to-s3-backup-with-docker
#sync_repo_df servicebroker
sync_repo_df spark-openshift-orchestration
sync_repo_df storm-openshift-orchestration
sync_repo_df tensorflow-playground
sync_repo_df wordpress
sync_repo_df zookeeper-exhibitor-openshift-orchestration
sync_repo_df zookeeper-openshift-orchestration
sync_repo_df datafoundry_serviceusage
sync_repo_df datafoundry_payment
sync_repo_df datafoundry_recharge
sync_repo_df datafoundry_aipay
sync_repo_df datafoundry_ocdp_hive_demo
sync_repo_df datafoundry_data_integration
sync_repo_df datafoundry_data_instance

