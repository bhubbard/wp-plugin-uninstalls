<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcf_ca_show_weekly_report_email_notice');
delete_site_option('wcf_ca_show_weekly_report_email_notice');
delete_option('cartflows_ca_use_new_ui');
delete_site_option('cartflows_ca_use_new_ui');
delete_option('wcf_ca_global_param');
delete_site_option('wcf_ca_global_param');
delete_option('wcf_ca_excludes_orders');
delete_site_option('wcf_ca_excludes_orders');
delete_option('cartflows_ca_partner_url_param');
delete_site_option('cartflows_ca_partner_url_param');
delete_option('wcf_ca_all_db_tables_created');
delete_site_option('wcf_ca_all_db_tables_created');
delete_option('wcf_ca_version');
delete_site_option('wcf_ca_version');
delete_option('wcar_do_redirect');
delete_site_option('wcar_do_redirect');
delete_option('wcar_onboarding_completed');
delete_site_option('wcar_onboarding_completed');
delete_option('wcf_ca_status');
delete_site_option('wcf_ca_status');
delete_option('wcf_ca_cron_run_time');
delete_site_option('wcf_ca_cron_run_time');
delete_option('wcf_ca_ignore_users');
delete_site_option('wcf_ca_ignore_users');
delete_option('wcar_email_admin_on_recovery');
delete_site_option('wcar_email_admin_on_recovery');
delete_option('wcf_ca_auto_delete_coupons');
delete_site_option('wcf_ca_auto_delete_coupons');
delete_option('wcf_ca_delete_coupons');
delete_site_option('wcf_ca_delete_coupons');
delete_option('wcf_ca_from_name');
delete_site_option('wcf_ca_from_name');
delete_option('wcf_ca_from_email');
delete_site_option('wcf_ca_from_email');
delete_option('wcf_ca_reply_email');
delete_site_option('wcf_ca_reply_email');
delete_option('wcf_ca_send_recovery_report_emails_to_admin');
delete_site_option('wcf_ca_send_recovery_report_emails_to_admin');
delete_option('wcf_ca_admin_email');
delete_site_option('wcf_ca_admin_email');
delete_option('wcf_ca_zapier_tracking_status');
delete_site_option('wcf_ca_zapier_tracking_status');
delete_option('wcf_ca_zapier_cart_abandoned_webhook');
delete_site_option('wcf_ca_zapier_cart_abandoned_webhook');
delete_option('wcf_ca_coupon_expiry');
delete_site_option('wcf_ca_coupon_expiry');
delete_option('wcf_ca_coupon_expiry_unit');
delete_site_option('wcf_ca_coupon_expiry_unit');
delete_option('wcf_ca_coupon_code_status');
delete_site_option('wcf_ca_coupon_code_status');
delete_option('wcf_ca_discount_type');
delete_site_option('wcf_ca_discount_type');
delete_option('wcf_ca_coupon_amount');
delete_site_option('wcf_ca_coupon_amount');
delete_option('wcf_ca_gdpr_status');
delete_site_option('wcf_ca_gdpr_status');
delete_option('wcf_ca_gdpr_message');
delete_site_option('wcf_ca_gdpr_message');
delete_option('wcf_ca_delete_plugin_data');
delete_site_option('wcf_ca_delete_plugin_data');
delete_option('wcar_usage_optin');
delete_site_option('wcar_usage_optin');
delete_option('cf_analytics_optin');
delete_site_option('cf_analytics_optin');
delete_option('allowed_astra_notices');
delete_site_option('allowed_astra_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bsf_usage_last_displayed_time');
delete_site_option('bsf_usage_last_displayed_time');
delete_option('bsf_usage_migrated');
delete_site_option('bsf_usage_migrated');
delete_option('bsf_analytics_last_displayed_time');
delete_site_option('bsf_analytics_last_displayed_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nps-survey-cartflows-ca');
delete_site_option('nps-survey-cartflows-ca');
delete_option('bsf_product_referers');
delete_site_option('bsf_product_referers');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wcf_email_body');
delete_site_option('wcf_email_body');
delete_option('wcf_ca_free_shipping_coupon');
delete_site_option('wcf_ca_free_shipping_coupon');
delete_option('wcf_ca_individual_use_only');
delete_site_option('wcf_ca_individual_use_only');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wcar_rollback_versions_%', '_site_transient_wcar_rollback_versions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wcar_%', '_site_transient_wcar_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wcar_redirect_to_onboarding');
delete_site_transient('wcar_redirect_to_onboarding');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wcf_ca_show_message');
delete_site_transient('wcf_ca_show_message');
delete_transient('bsf_analytics_track');
delete_site_transient('bsf_analytics_track');
delete_transient('bsf_usage_track');
delete_site_transient('bsf_usage_track');
delete_transient('woocommerce_ca_delete_garbage_coupons');
delete_site_transient('woocommerce_ca_delete_garbage_coupons');

// Clear Cron Jobs
wp_clear_scheduled_hook('cartflows_ca_update_order_status_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_postcode' ) );

