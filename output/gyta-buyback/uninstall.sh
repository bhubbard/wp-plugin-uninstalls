#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wcpti_customer_order_approval_required'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wcpti_settings_order_placed_local_drop_off'
wp option delete 'wcpti_settings_easypost_api_key'
wp option delete 'wcpti_settings_vpfi_use_easypost'
wp option delete 'wcpti_settings_easypost_skip_address_validation'
wp option delete 'wcpti_settings_shipping_name'
wp option delete 'wcpti_settings_address_1'
wp option delete 'wcpti_settings_address_2'
wp option delete 'wcpti_settings_city'
wp option delete 'wcpti_settings_state'
wp option delete 'wcpti_settings_postal_code'
wp option delete 'wcpti_settings_country'
wp option delete 'wcpti_settings_company_name'
wp option delete 'wcpti_settings_shipping_phone_number'
wp option delete 'wcpti_settings_easypost_compound_carrier_service'
wp option delete 'wcpti_settings_easypost_royal_mail_predefined_package_size'
wp option delete 'wcpti_settings_billing_details_display_change'
wp option delete 'wcpti_settings_billing_details_remove_company_name'
wp option delete '_wcpti_settings_activation_date'
wp option delete 'wcpti_settings_order_complete_email_content'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

