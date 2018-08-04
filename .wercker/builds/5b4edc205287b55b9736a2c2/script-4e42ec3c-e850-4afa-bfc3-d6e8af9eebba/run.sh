set -e
export VCAP_SERVICES=`vcapinate -path=./integrations/vcap.yml`
export VCAP_APPLICATION={}
go test ./integrations/_test -v -race
