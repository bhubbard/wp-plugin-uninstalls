#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'grid_privileges'
wp option delete 'grid_debug_mode'
wp option delete 'grid_default_container_style'
wp option delete 'grid_default_slot_style'
wp option delete 'grid_default_box_style'
wp option delete 'grid_landing_page_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_search_enabled'"
wp option delete 'grid_default_container'
wp option delete 'grid_async'
wp option delete 'grid_async_url'
wp option delete 'grid_async_timeout'
wp option delete 'grid_mediaselect_info'
wp option delete 'grid_mediaselect_types'
wp option delete 'grid_permalinks'
wp option delete 'grid'
wp option delete 'grid_post_search_enabled'
wp option delete 'grid_page_search_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
