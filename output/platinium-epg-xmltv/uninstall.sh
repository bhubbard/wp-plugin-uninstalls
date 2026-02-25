#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pepg_saved_shortcodes'
wp option delete 'pepg_stream_links'
wp option delete 'pepg_display_options'
wp option delete 'pepg_urls'
wp option delete 'pepg_url_names'
wp option delete 'pepg_m3u_urls'
wp option delete 'pepg_m3u_url_names'
wp option delete 'pepg_sync_interval'
wp option delete 'pepg_playback_options'
wp option delete 'pepg_debug_sync_log'
wp option delete 'pepg_license_key'
wp option delete 'pepg_license_status'
wp option delete 'pepg_license_error'
wp option delete 'pepg_activation_date'
wp option delete 'pepg_notice_dismiss_period'
wp option delete 'pepg_notice_dismissed_permanently'

# Clear Cron Jobs
wp cron event delete 'pepg_daily_event'

