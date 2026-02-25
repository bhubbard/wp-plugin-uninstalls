#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ta_temporary_access_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ta_temporary_access_hash_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ta_temporary_access_hash_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'temporary_access_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'temporary_access_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'temporary_access_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'temporary_access_time'"
