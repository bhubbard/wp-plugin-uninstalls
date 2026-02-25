#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'background-music-menu'
wp option delete 'bmm_wp_last_menu_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bmm_wp_table_change_%' OR option_name LIKE '_site_transient_bmm_wp_table_change_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description-nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description-nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description-nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description-nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item'"
