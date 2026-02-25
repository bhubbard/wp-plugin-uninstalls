#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosvi_options'
wp option delete 'woosvi_options_settings_imported'
wp option delete 'woosvi_options_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woosvi_slug_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woosvi_slug_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woosvi_slug_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woosvi_slug_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_checkbox_svipro_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_checkbox_svipro_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_checkbox_svipro_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_checkbox_svipro_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svi_notice_dismissed_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svi_notice_dismissed_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svi_notice_dismissed_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svi_notice_dismissed_1'"
