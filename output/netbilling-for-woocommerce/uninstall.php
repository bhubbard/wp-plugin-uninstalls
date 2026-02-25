<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_netbilling_is_active');
delete_site_option('wc_netbilling_is_active');
delete_option('wc_netbilling_for_wc_legacy_upgrade');
delete_site_option('wc_netbilling_for_wc_legacy_upgrade');
delete_option('wc_netbilling_version');
delete_site_option('wc_netbilling_version');
delete_option('wc_netbilling_for_wc_upgraded_to_v2_0_0');
delete_site_option('wc_netbilling_for_wc_upgraded_to_v2_0_0');
delete_option('_transient_timeout_foo');
delete_site_option('_transient_timeout_foo');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_is_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_milestone_messages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_milestone_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('sv_wc_apple_pay_cert_path');
delete_site_option('sv_wc_apple_pay_cert_path');
delete_option('sv_wc_apple_pay_merchant_id');
delete_site_option('sv_wc_apple_pay_merchant_id');
delete_option('woocommerce_calc_shipping');
delete_site_option('woocommerce_calc_shipping');

// Delete Transients
delete_transient('foo');
delete_site_transient('foo');
delete_transient('sv_wc_plugin_wc_versions');
delete_site_transient('sv_wc_plugin_wc_versions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'billing_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'billing_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'billing_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'billing_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'shipping_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'shipping_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'shipping_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'shipping_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_migrated' ) );

