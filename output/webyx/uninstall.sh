#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webyx_fg_hide_admin_top_bar'
wp option delete 'webyx_fg_menu'
wp option delete 'webyx_fg_activation_time'
wp option delete 'webyx_fg_spare_me'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
