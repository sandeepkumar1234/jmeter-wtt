#!/bin/bash

instanceFile=${WORKSPACE}/test.properties
if [ -f "$instanceFile" ]; then
   test_url=$(cat "$instanceFile" | grep url)
   index_name=$(cat "$instanceFile" | grep index)
   es_url=$(cat "$instanceFile" | grep host)
   run_id=$(cat "$instanceFile" | grep runid)

   
   updated_test_url="url=$testurl"
   updated_index_name="index=$indexname"
   updated_es_url="host=$esurl"
   updated_run_id="runid=$runid"
    
   # SED command to replace exisitng line with newly updated line in InstanceFile
   sed -i "s|$test_url|$updated_test_url|g" "$instanceFile"
   sed -i "s|$index_name|$updated_index_name|g" "$instanceFile"
   sed -i "s|$es_url|$updated_es_url|g" "$instanceFile"
   sed -i "s/$run_id/$updated_run_id/g" "$instanceFile"
fi
