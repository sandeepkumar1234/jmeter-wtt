#!/bin/bash

instanceFile=${WORKSPACE}/test.properties
if [ -f "$instanceFile" ]; then
   application_url=$(cat "$instanceFile" | grep testurl)
   url_port=$(cat "$instanceFile" | grep urlport)
   url_path=$(cat "$instanceFile" | grep urlpath)
   url_protocol=$(cat "$instanceFile" | grep urlprotocol)
   index_name=$(cat "$instanceFile" | grep index)
   es_url=$(cat "$instanceFile" | grep host)
   test_planId=$(cat "$instanceFile" | grep runid)

   
   updated_application_url="testurl=$applicationurl"
   updated_url_port="urlport=$urlport"
   updated_url_path="urlport=$urlpath"
   updated_url_protocol="urlport=$urlprotocol"
   updated_index_name="index=$indexname"
   updated_es_url="host=$esurl"
   updated_test_planId="runid=$testplanId"
    
   # SED command to replace exisitng line with newly updated line in InstanceFile
   sed -i "s|$application_url|$updated_application_url|g" "$instanceFile"
   sed -i "s|$url_port|$updated_url_port|g" "$instanceFile"
   sed -i "s|$url_path|$updated_url_path|g" "$instanceFile"
   sed -i "s|$url_protocol|$updated_url_protocol|g" "$instanceFile"
   sed -i "s|$index_name|$updated_index_name|g" "$instanceFile"
   sed -i "s|$es_url|$updated_es_url|g" "$instanceFile"
   sed -i "s/$test_planId/$updated_test_planId/g" "$instanceFile"
fi






#!/bin/bash

# instanceFile=${WORKSPACE}/test.properties
# if [ -f "$instanceFile" ]; then
#    application_url=$(cat "$instanceFile" | grep url)
#    index_name=$(cat "$instanceFile" | grep index)
#    es_url=$(cat "$instanceFile" | grep host)
#    test_planId=$(cat "$instanceFile" | grep runid)

   
#    updated_application_url="url=$applicationurl"
#    updated_index_name="index=$indexname"
#    updated_es_url="host=$esurl"
#    updated_test_planId="runid=$testplanId"
    
#    # SED command to replace exisitng line with newly updated line in InstanceFile
#    sed -i "s|$application_url|$updated_application_url|g" "$instanceFile"
#    sed -i "s|$index_name|$updated_index_name|g" "$instanceFile"
#    sed -i "s|$es_url|$updated_es_url|g" "$instanceFile"
#    sed -i "s/$test_planId/$updated_test_planId/g" "$instanceFile"
# fi
