#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rdContactOverride'
wp option delete 'rdContactName'
wp option delete 'rdContactPhone'
wp option delete 'rdContactMobile'
wp option delete 'rdContactFax'
wp option delete 'rdContactEmail'
wp option delete 'rdContactStreet'
wp option delete 'rdContactCity'
wp option delete 'rdContactState'
wp option delete 'rdContactZip'
wp option delete 'rdShowContactName'
wp option delete 'rdShowContactPhone'
wp option delete 'rdShowContactMobile'
wp option delete 'rdShowContactFax'
wp option delete 'rdShowContactEmail'
wp option delete 'rdShowContactAddress'

