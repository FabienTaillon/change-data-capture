sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias changedatacapture --durationdays 7 --setdefaultusername
sfdx force:source:push --targetusername changedatacapture
sfdx force:user:permset:assign --permsetname Change_Data_Capture --targetusername changedatacapture
sfdx force:org:open --path /lightning/n/Change_Data_Capture --targetusername changedatacapture