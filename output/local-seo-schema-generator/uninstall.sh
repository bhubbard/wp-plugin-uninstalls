#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lssg_services'
wp option delete 'lssg_business'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lssg_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lssg_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lssg_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lssg_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lssg_autoinject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lssg_autoinject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lssg_autoinject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lssg_autoinject'"
