<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc-paygent-mb');
delete_site_option('wc-paygent-mb');
delete_option('wc-paygent-paidy');
delete_site_option('wc-paygent-paidy');
delete_option('wc-paygent-paypay');
delete_site_option('wc-paygent-paypay');
delete_option('wc-paygent-rakutenpay');
delete_site_option('wc-paygent-rakutenpay');
delete_option('wc-paygent-bn');
delete_site_option('wc-paygent-bn');
delete_option('wc-paygent-atm');
delete_site_option('wc-paygent-atm');
delete_option('wc-paygent-mccc');
delete_site_option('wc-paygent-mccc');
delete_option('wc-paygent-cc');
delete_site_option('wc-paygent-cc');
delete_option('wc-paygent-cs');
delete_site_option('wc-paygent-cs');
delete_option('jp4wc_card_expiry_settings');
delete_site_option('jp4wc_card_expiry_settings');
delete_option('wc_paygent_options_name');
delete_site_option('wc_paygent_options_name');
delete_option('wc-paygent-test-client-cert-file');
delete_site_option('wc-paygent-test-client-cert-file');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%sid' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%testmode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%hash_check' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%prefix_order' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%debug' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('jp4wcoal_max_attempts');
delete_site_option('jp4wcoal_max_attempts');
delete_option('jp4wcoal_lockout_duration');
delete_site_option('jp4wcoal_lockout_duration');
delete_option('jp4wcoal_cleanup_interval');
delete_site_option('jp4wcoal_cleanup_interval');
delete_option('wc-paygent-prefix_order');
delete_site_option('wc-paygent-prefix_order');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('wc-paygent-testmode');
delete_site_option('wc-paygent-testmode');
delete_option('wc-paygent-test-mid');
delete_site_option('wc-paygent-test-mid');
delete_option('wc-paygent-test-tokenkey');
delete_site_option('wc-paygent-test-tokenkey');
delete_option('wc-paygent-mid');
delete_site_option('wc-paygent-mid');
delete_option('wc-paygent-tokenkey');
delete_site_option('wc-paygent-tokenkey');
delete_option('wc-paygent-cid');
delete_site_option('wc-paygent-cid');
delete_option('wc-paygent-cpass');
delete_site_option('wc-paygent-cpass');
delete_option('wc-paygent-test-cid');
delete_site_option('wc-paygent-test-cid');
delete_option('wc-paygent-test-cpass');
delete_site_option('wc-paygent-test-cpass');
delete_option('wc-paygent-sid');
delete_site_option('wc-paygent-sid');
delete_option('wc-paygent-hash_check');
delete_site_option('wc-paygent-hash_check');
delete_option('wc-paygent-test-hash_code');
delete_site_option('wc-paygent-test-hash_code');
delete_option('wc-paygent-hash_code');
delete_site_option('wc-paygent-hash_code');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('wc-paygent-debug');
delete_site_option('wc-paygent-debug');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('paygent_ip_permission_error_sent');
delete_site_transient('paygent_ip_permission_error_sent');

// Clear Cron Jobs
wp_clear_scheduled_hook('jp4wc_card_expiry_check');
wp_clear_scheduled_hook('jp4wcoal_cleanup_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pay_center_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pay_center_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pay_center_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pay_center_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_conf_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_conf_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_conf_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_conf_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_limit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_limit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_limit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_limit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_last_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_last_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_last_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_last_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jp4wc_password_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jp4wc_password_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jp4wc_password_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jp4wc_password_update' ) );

