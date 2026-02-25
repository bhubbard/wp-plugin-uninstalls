#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smush_deactivated'
wp option delete 'skip-smush-setup'
wp option delete 'wp_smush_pre_3_22_site'
wp option delete 'wp-smush-show_upgrade_modal'
wp option delete 'wp-smush-api_message'
wp option delete 'wp-smush-settings_updated'
wp option delete 'wp-smush-networkwide'
wp option delete 'wp-smush-show-new-feature-hotspot'
wp option delete 'dir_smush_stats'
wp option delete 'wp-smush-dismissed-notices'
wp option delete 'wp-smush-hide_upgrade_notice'
wp option delete 'wp-smush-hide_s3support_alert'
wp option delete 'wp_smush_event_times'
wp option delete 'wp-smush-last_run_sync'
wp option delete 'wp-smush-preset_configs'
wp option delete 'wpmudev_apikey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'
wp option delete 'wp_smush_show_connected_modal'
wp option delete 'wp_smush_api_auth'
wp option delete 'wp-smush-version'
wp option delete 'wp-smush-install-type'
wp option delete 'wp-smush-hide_blackfriday_modal'
wp option delete 'wp-smush-transparent_png'
wp option delete 'wp-smush-show-black-friday'
wp option delete 'wp-smush-run_recheck'
wp option delete 'wp-smush-hide_pagespeed_suggestion'
wp option delete 'wp-smush-hide_smush_welcome'
wp option delete 'wdev_logger_wp-smush-pro'
wp option delete 'wdev_logger_wp-smushit'
wp option delete 'wp-smush-webp_hide_wizard'
wp option delete 'wp-smush-png2jpg-rewrite-rules-flushed'
wp option delete 'wp_smush_scan_slice_size'
wp option delete 'wp-smush-image_sizes'
wp option delete 'wp-smush-resize_sizes'
wp option delete 'wp-smush-cdn_status'
wp option delete 'wp-smush-lazy_load'
wp option delete 'wp-smush-cdn-advanced-settings'
wp option delete 'wp-smush-hide-tutorials'
wp option delete 'smush_global_stats'
wp option delete 'wp-smush-resmush-list'
wp option delete 'allowedthemes'
wp option delete 'ftp_credentials'
wp option delete 'wp-smush-hide_update_info'
wp option delete 'wp_smush_scan'
wp option delete 'wp-smush-scan-step'
wp option delete 'wp-smush-plugin-activated'

# Delete Transients
wp transient delete 'wp-smush-conflict_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-smush-restore-%' OR option_name LIKE '_site_transient_wp-smush-restore-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smush-in-progress-%' OR option_name LIKE '_site_transient_smush-in-progress-%'"
wp transient delete 'wp-smush-show-dir-scan-notice'
wp transient delete 'wp-smush-dir-scan-failed-items'
wp transient delete 'wp-smush-dir-scan-skipped-items'
wp transient delete 'wp_smush_skip_image_sizes_recheck'

# Clear Cron Jobs
wp cron event delete 'smush_check_for_conflicts'
wp cron event delete 'wdev_logger_clear_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smush-resize_savings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smush-resize_savings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smush-resize_savings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smush-resize_savings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smush-ignore-bulk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smush-ignore-bulk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smush-ignore-bulk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smush-ignore-bulk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smush-pngjpg_savings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smush-pngjpg_savings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smush-pngjpg_savings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smush-pngjpg_savings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smush-lossy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smush-lossy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smush-lossy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smush-lossy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smush-original_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smush-original_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smush-original_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smush-original_file'"
