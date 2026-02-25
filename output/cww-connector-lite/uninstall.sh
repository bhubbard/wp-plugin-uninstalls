#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cww_cf7apikey'
wp option delete 'cww_cf7apiurl'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cww_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cww_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cww_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cww_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cww_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cww_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cww_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cww_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cww_credentials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cww_credentials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cww_credentials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cww_credentials'"
