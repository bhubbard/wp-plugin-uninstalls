#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprne_settings'
wp option delete 'wprne_license_data'
wp option delete 'wprne_send_post_pushnotif'
wp option delete 'wprne_push_notif_token'
wp option delete 'wprne_pages'
wp option delete 'wprne_templates'
wp option delete 'wprne_apps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wprne_pages_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprne_push_notif_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprne_push_notif_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprne_push_notif_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprne_push_notif_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
