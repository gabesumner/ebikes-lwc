sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s -n --userprefix ebikes --userdomain ebikes.demo
sfdx force:source:push
sfdx force:user:permset:assign -n ebikes
sfdx force:data:tree:import --plan ./data/sample-data-plan.json
sfdx shane:org:reauth -r --json
sfdx shane:theme:activate -n eBikesTheme
sfdx force:org:open
sfdx shane:user:password:set -g User -l User -p sfdx1234