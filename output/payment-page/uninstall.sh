#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payment_page_area_%' OR option_name LIKE '_site_transient_payment_page_area_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_form_templates' OR option_name LIKE '_site_transient_%_form_templates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_stripe_apple_pay_domain' OR option_name LIKE '_site_transient_%_stripe_apple_pay_domain'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_notification_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_notification_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_notification_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_notification_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
