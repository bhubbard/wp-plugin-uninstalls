#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpzohocrm_status'
wp option delete 'wpzohocrm_auth_key'
wp option delete 'sync_number'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LEADID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LEADID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LEADID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LEADID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CONTACTID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CONTACTID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CONTACTID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CONTACTID'"
