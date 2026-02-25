#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skyroom_site_url'
wp option delete 'skyroom_api_key'
wp option delete 'skyroom_integrated_plugin'
wp option delete 'skyroom_link_ttl'
wp option delete 'skyroom_link_ttl_unit'
wp option delete 'skyroom_last_sync'
wp option delete 'skyroom_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'skyroom_sync_data_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_skyroom_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_skyroom_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_skyroom_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_skyroom_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_skyroom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_skyroom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_skyroom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_skyroom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_skyroom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_skyroom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_skyroom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_skyroom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_skyroom_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_skyroom_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_skyroom_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_skyroom_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_skyroom_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_skyroom_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_skyroom_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_skyroom_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
