#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saprfurl_hide_login_page'
wp option delete 'saprfurl_hide_redirect_page'
wp option delete 'saprfurl_custom_redirect'
wp option delete 'saprfurl_internal_link'
wp option delete 'saprfurl_external_link'
wp option delete 'saprfurl_internal_follow'
wp option delete 'saprfurl_user_redirect_url_after_logout'
wp option delete 'saprfurl_user_redirect_url_after_login'
wp option delete 'saprfurl_user_redirect_url_after_registration'
wp option delete 'saprfurl_external_follow'
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

