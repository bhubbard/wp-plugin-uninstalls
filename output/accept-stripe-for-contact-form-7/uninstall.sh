#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7pa_sys_settings'
wp option delete 'cf7pa_stripe_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'cf7pa_email_list'
wp option delete 'stripe_express_email_sender_from_email'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'cf7pa_stripe_configs'
wp transient delete 'cf7pa_stripe_price_list'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7pa_checkout_redirect_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7pa_checkout_redirect_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7pa_checkout_redirect_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7pa_checkout_redirect_setting'"
