#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppssl_ssl_activated'
wp option delete 'wpssl_basedomain'
wp option delete 'wpssl_iswildcard'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wpssl_current_certificate'
wp option delete 'wpssl_cert_expired'
wp option delete 'wpssl_cert_renewed'
wp option delete 'wpssl_no_renew_yet'
wp option delete 'wpssl_scheduled_autorenew'
wp option delete 'wpssl_autoinstall'
wp option delete 'wpssl_renew_ran'
wp option delete 'wpssl_email'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'check_every_day'

