#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogger_importer'

# Clear Cron Jobs
wp cron event delete 'wp_cron_importer_hook'
wp cron event delete 'selective_import_check_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogger_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogger_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogger_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogger_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogger_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogger_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogger_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogger_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogger_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogger_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogger_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogger_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_import_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_import_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_import_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_import_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
