#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_imgspy_history'
wp option delete 'wb_imgspy_history_post_id'
wp option delete 'wb_imgspy_scan'
wp option delete 'wb_imgspider_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_imgspider_cnf_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wb_imgspy_watermark_image'
wp cron event delete 'wb_imgspy_auto_save_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wb_watermark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wb_watermark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wb_watermark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wb_watermark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_imgspy_auto_save_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_imgspy_auto_save_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_imgspy_auto_save_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_imgspy_auto_save_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imgspy_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imgspy_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imgspy_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imgspy_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
