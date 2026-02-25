#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-admin-groups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-holiday-ics'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ownerRole'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ownerRole'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ownerRole'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ownerRole'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resourcemanager_resource_owner_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resourcemanager_resource_owner_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resourcemanager_resource_owner_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resourcemanager_resource_owner_mail'"
