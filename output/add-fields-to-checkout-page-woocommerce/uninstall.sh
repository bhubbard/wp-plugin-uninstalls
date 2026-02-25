#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wcfe_account_label'
wp option delete 'wc_fields_account'
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_additional'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_fields_%'"
wp option delete 'wcfe_account_sync_fields'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

