#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'ms_files_rewriting'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'broadcast_last_used_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'broadcast_last_used_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'broadcast_last_used_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'broadcast_last_used_settings'"
