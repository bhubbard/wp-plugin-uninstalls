<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('wcpti_customer_order_approval_required');
delete_site_option('wcpti_customer_order_approval_required');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('wcpti_settings_order_placed_local_drop_off');
delete_site_option('wcpti_settings_order_placed_local_drop_off');
delete_option('wcpti_settings_easypost_api_key');
delete_site_option('wcpti_settings_easypost_api_key');
delete_option('wcpti_settings_vpfi_use_easypost');
delete_site_option('wcpti_settings_vpfi_use_easypost');
delete_option('wcpti_settings_easypost_skip_address_validation');
delete_site_option('wcpti_settings_easypost_skip_address_validation');
delete_option('wcpti_settings_shipping_name');
delete_site_option('wcpti_settings_shipping_name');
delete_option('wcpti_settings_address_1');
delete_site_option('wcpti_settings_address_1');
delete_option('wcpti_settings_address_2');
delete_site_option('wcpti_settings_address_2');
delete_option('wcpti_settings_city');
delete_site_option('wcpti_settings_city');
delete_option('wcpti_settings_state');
delete_site_option('wcpti_settings_state');
delete_option('wcpti_settings_postal_code');
delete_site_option('wcpti_settings_postal_code');
delete_option('wcpti_settings_country');
delete_site_option('wcpti_settings_country');
delete_option('wcpti_settings_company_name');
delete_site_option('wcpti_settings_company_name');
delete_option('wcpti_settings_shipping_phone_number');
delete_site_option('wcpti_settings_shipping_phone_number');
delete_option('wcpti_settings_easypost_compound_carrier_service');
delete_site_option('wcpti_settings_easypost_compound_carrier_service');
delete_option('wcpti_settings_easypost_royal_mail_predefined_package_size');
delete_site_option('wcpti_settings_easypost_royal_mail_predefined_package_size');
delete_option('wcpti_settings_billing_details_display_change');
delete_site_option('wcpti_settings_billing_details_display_change');
delete_option('wcpti_settings_billing_details_remove_company_name');
delete_site_option('wcpti_settings_billing_details_remove_company_name');
delete_option('_wcpti_settings_activation_date');
delete_site_option('_wcpti_settings_activation_date');
delete_option('wcpti_settings_order_complete_email_content');
delete_site_option('wcpti_settings_order_complete_email_content');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

