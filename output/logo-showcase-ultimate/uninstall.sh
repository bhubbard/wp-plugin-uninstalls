#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'lcg_dismiss_discount_notice'
wp option delete 'lcg_migrate_serialize_to_json'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'img_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'img_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'img_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'img_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'img_tool'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'img_tool'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'img_tool'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'img_tool'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcg_scode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcg_scode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcg_scode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcg_scode'"
