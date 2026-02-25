#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'enweby_fb_post_field_id'
wp option delete 'enweby_fb_page_field_id'
wp option delete 'enweby_fb_display_options'
wp option delete 'enweby_fb_background_type'
wp option delete 'enweby_fb_bg_image'
wp option delete 'enweby_fb_bg_video'
wp option delete 'enweby_fb_bg_color'
wp option delete 'enweby_fb_background_size'
wp option delete 'enweby_fb_background_position'
wp option delete 'enweby_fb_background_attachment'
wp option delete 'enweby_fb_overlay_shadow'
wp option delete 'enweby_fb_video_background_position'
wp option delete 'enweby_fb_video_background_fit'
wp option delete 'enweby_fullscreen_background_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-optin-screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-optin-screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-optin-screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-optin-screen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enwb_fb_settings_meta_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enwb_fb_settings_meta_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enwb_fb_settings_meta_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enwb_fb_settings_meta_single'"
