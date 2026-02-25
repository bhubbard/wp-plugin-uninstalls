#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick-paypal-payments-settings-1'
wp option delete 'quick-paypal-payments-settings-2'
wp option delete 'qpp_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_messages%'"
wp option delete 'qpp_messageoptions'
wp option delete 'qpp_setup'
wp option delete 'qpp_curr'
wp option delete 'qpp_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_options%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_send%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_style%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_error%'"
wp option delete 'qpp_ipn'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_multiples%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_coupon%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_address%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qpp_autoresponder%'"
wp option delete 'qpp_mailinglist'
wp option delete 'qpp_sandbox'
wp option delete 'qpp_screen_messages'
wp option delete 'qpp_key'
wp option delete 'qpp_legacy_free'
wp option delete 'qpp_licence_generated'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfea_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfea_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfea_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfea_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpp_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpp_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpp_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpp_dismissed_notices'"
