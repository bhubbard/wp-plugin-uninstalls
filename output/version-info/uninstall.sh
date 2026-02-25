#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'version_info_show_admin_bar'
wp option delete 'version_info_show_dashboard_widget'
wp option delete 'version_info_allowed_roles'
wp option delete 'version_info_show_footer'
wp option delete 'version_info_show_env_badge'
wp option delete 'version_info_env_admin_bar_highlight'
wp option delete 'version_info_wl_plugin_name'
wp option delete 'version_info_wl_author_name'
wp option delete 'version_info_wl_hide_branding'
wp option delete 'version_info_alert_enabled'
wp option delete 'version_info_alert_recipients'
wp option delete 'version_info_alert_types'
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

