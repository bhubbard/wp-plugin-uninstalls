#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'stripe_express_mode'
wp option delete 'stripe_express_currency'
wp option delete 'stripe_express_live_key'
wp option delete 'stripe_express_live_secret'
wp option delete 'stripe_express_test_key'
wp option delete 'stripe_express_test_secret'
wp option delete 'stripe_express_webhook_secret'
wp option delete 'stripe_express_success_url'
wp option delete 'stripe_express_cancel_url'
wp option delete 'stripe_express_webhook'
wp option delete 'stripe_express_debug'
wp option delete 'stripe_express_keep_data'
wp option delete 'stripe_express_language'
wp option delete 'stripe_express_theme'
wp option delete 'stripe_express_plaid_env'
wp option delete 'stripe_express_plaid_client_name'
wp option delete 'stripe_express_plaid_client_id'
wp option delete 'stripe_express_plaid_secret'
wp option delete 'stripe_express_plaid_products'
wp option delete 'stripe_express_welcome_dismissed'
wp option delete 'stripe_express_email'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

