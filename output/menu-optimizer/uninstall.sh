#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ommo_menu_id'
wp option delete 'ommo_menu_type'
wp option delete 'ommo_menu_layout'
wp option delete 'ommo_css_source'
wp option delete 'ommo_generated_menus'
wp option delete 'ommo_cache_version'
wp option delete 'ommo_custom_css'
wp option delete 'ommo_submenu_filename'
wp option delete 'ommo_top_menu_filename'

# Clear Cron Jobs
wp cron event delete 'ommo_regenerate_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_megamenu'"
