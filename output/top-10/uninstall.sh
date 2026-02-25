#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tptn_db_version'
wp option delete 'tptn_settings'
wp option delete 'tptn_show_wizard'
wp option delete 'tptn_wizard_notice_dismissed'
wp option delete 'active_sitewide_plugins'
wp option delete 'ald_tptn_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'tptn_show_wizard_activation_redirect'
wp transient delete 'tptn_deactivated_notice_id'
wp transient delete 'tptn_deactivated_notice'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'tptn_cron_hook'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tptn_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tptn_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tptn_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tptn_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
