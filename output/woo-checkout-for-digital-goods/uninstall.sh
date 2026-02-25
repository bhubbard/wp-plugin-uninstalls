#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdg_where_hear_about_us'
wp option delete 'wcdg_data_submited_in_sendiblue'
wp option delete 'wcdg_checkout_setting'
wp option delete 'wcdg_billing_fields_order'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete '_welcome_screen_wcdg_mode_activation_redirect_data'
wp transient delete 'wcdg-hide-checkout-notice'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

