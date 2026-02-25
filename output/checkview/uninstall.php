<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('checkview_log_options');
delete_site_option('checkview_log_options');
delete_option('captcha_ip_range_opt');
delete_site_option('captcha_ip_range_opt');
delete_option('i13_recapcha_ip_to_skip_captcha');
delete_site_option('i13_recapcha_ip_to_skip_captcha');
delete_option('checkview_hide_me');
delete_site_option('checkview_hide_me');
delete_option('checkview_advance_options');
delete_site_option('checkview_advance_options');
delete_option('checkview_api_options');
delete_site_option('checkview_api_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'CF_TEST_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wsf_entry_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wsf_frm_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cleantalk_data');
delete_site_option('cleantalk_data');
delete_option('disable_actions');
delete_site_option('disable_actions');
delete_option('disable_email_receipt');
delete_site_option('disable_email_receipt');
delete_option('woocommerce_checkview_settings');
delete_site_option('woocommerce_checkview_settings');
delete_option('disable_webhooks');
delete_site_option('disable_webhooks');
delete_option('checkview_woo_product_id');
delete_site_option('checkview_woo_product_id');
delete_option('checkview_test_user');
delete_site_option('checkview_test_user');
delete_option('checkview_admin_menu_title');
delete_site_option('checkview_admin_menu_title');

// Delete Transients
delete_transient('checkview_forms_test_transient');
delete_site_transient('checkview_forms_test_transient');
delete_transient('checkview_store_orders_transient');
delete_site_transient('checkview_store_orders_transient');
delete_transient('checkview_store_products_transient');
delete_site_transient('checkview_store_products_transient');
delete_transient('checkview_store_shipping_transient');
delete_site_transient('checkview_store_shipping_transient');
delete_transient('checkview_forms_list_transient');
delete_site_transient('checkview_forms_list_transient');
delete_transient('checkview_saas_pk');
delete_site_transient('checkview_saas_pk');
delete_transient('checkview_saas_ip_address');
delete_site_transient('checkview_saas_ip_address');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_checkview_whitelisted_ips_%', '_site_transient_checkview_whitelisted_ips_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('checkview_whitelisted_ips_spamfirewall');
delete_site_transient('checkview_whitelisted_ips_spamfirewall');
delete_transient('checkview_whitelisted_ips_antispam');
delete_site_transient('checkview_whitelisted_ips_antispam');
delete_transient('checkview_activation_notification');
delete_site_transient('checkview_activation_notification');

// Clear Cron Jobs
wp_clear_scheduled_hook('checkview_nonce_cleanup_cron');
wp_clear_scheduled_hook('checkview_delete_orders_action');
wp_clear_scheduled_hook('checkview_delete_table_cron_hook');
wp_clear_scheduled_hook('checkview_options_cleanup_cron');
wp_clear_scheduled_hook('checkview_rotate_user_credentials');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_form_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_form_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_form_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_form_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hash' ) );

