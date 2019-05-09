sfdx force:org:create -s -f config/project-scratch-def.json -a ebikes
sfdx force:source:push
sfdx force:user:permset:assign -n ebikes
sfdx force:data:tree:import --plan ./data/sample-data-plan.json
sfdx force:org:open
sfdx shane:user:password:set -g User -l User -p sfdx1234