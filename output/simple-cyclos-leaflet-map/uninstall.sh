#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cyclosUsersMap_adminuser'
wp option delete 'cyclosUsersMap_token'
wp option delete 'cyclosUsersMap_adminPassword'
wp option delete 'cyclosUsersMap_url'
wp option delete 'cyclosUsersMap_groupId'
wp option delete 'cyclosUsersMap_websiteName'
wp option delete 'cyclosUsersMap_descriptionName'
wp option delete 'cyclosUsersMap_width'
wp option delete 'cyclosUsersMap_height'
wp option delete 'cyclosUsersMap_homeLat'
wp option delete 'cyclosUsersMap_homeLon'
wp option delete 'cyclosUsersMap_homeZoom'
wp option delete 'cyclosUsersMap_references'

