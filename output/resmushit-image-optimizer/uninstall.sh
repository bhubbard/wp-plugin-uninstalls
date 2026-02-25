#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notices'"
wp option delete 'resmushit_on_upload'
wp option delete 'resmushit_qlty'
wp option delete 'resmushit_statistics'
wp option delete 'resmushit_logs'
wp option delete 'resmushit_cron'
wp option delete 'resmushit_preserve_exif'
wp option delete 'resmushit_remove_unsmushed'
wp option delete 'resmushit_notice_close'
wp option delete 'resmushit_has_no_backup_files'
wp option delete 'resmushit_cron_firstactivation'
wp option delete 'resmushit_cron_lastaction'
wp option delete 'resmushit_cron_lastrun'
wp option delete 'resmushit_total_optimized'
wp option delete 'resmushit_notice_close_eoldec23'

# Clear Cron Jobs
wp cron event delete 'resmushit_optimize'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resmushed_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resmushed_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resmushed_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resmushed_quality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resmushed_cumulated_original_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resmushed_cumulated_original_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resmushed_cumulated_original_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resmushed_cumulated_original_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resmushed_cumulated_optimized_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resmushed_cumulated_optimized_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resmushed_cumulated_optimized_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resmushed_cumulated_optimized_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resmushed_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resmushed_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resmushed_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resmushed_disabled'"
