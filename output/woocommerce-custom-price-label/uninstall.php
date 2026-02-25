<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_local_price_labels_enabled');
delete_site_option('woocommerce_local_price_labels_enabled');
delete_option('woocommerce_custom_price_labels_disabled_options');
delete_site_option('woocommerce_custom_price_labels_disabled_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_custom_price_label_enabled');
delete_site_option('woocommerce_custom_price_label_enabled');
delete_option('woocommerce_custom_price_label_disable_for_bots');
delete_site_option('woocommerce_custom_price_label_disable_for_bots');
delete_option('woocommerce_custom_price_label_override_global_with_local');
delete_site_option('woocommerce_custom_price_label_override_global_with_local');
delete_option('alg_woocommerce_global_price_labels_hide_on');
delete_site_option('alg_woocommerce_global_price_labels_hide_on');
delete_option('alg_woocommerce_global_price_labels_show_on');
delete_site_option('alg_woocommerce_global_price_labels_show_on');
delete_option('woocommerce_global_price_labels_enabled');
delete_site_option('woocommerce_global_price_labels_enabled');
delete_option('alg_woocommerce_global_price_labels_roles_to_hide');
delete_site_option('alg_woocommerce_global_price_labels_roles_to_hide');
delete_option('alg_woocommerce_global_price_labels_roles_to_show');
delete_site_option('alg_woocommerce_global_price_labels_roles_to_show');
delete_option('woocommerce_global_price_labels_add_before_text');
delete_site_option('woocommerce_global_price_labels_add_before_text');
delete_option('woocommerce_global_price_labels_add_after_text');
delete_site_option('woocommerce_global_price_labels_add_after_text');
delete_option('woocommerce_global_price_labels_between_regular_and_sale_text');
delete_site_option('woocommerce_global_price_labels_between_regular_and_sale_text');
delete_option('woocommerce_global_price_labels_remove_text');
delete_site_option('woocommerce_global_price_labels_remove_text');
delete_option('woocommerce_global_price_labels_replace_text');
delete_site_option('woocommerce_global_price_labels_replace_text');
delete_option('woocommerce_global_price_labels_replace_with_text');
delete_site_option('woocommerce_global_price_labels_replace_with_text');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('woocommerce_local_price_labels_wrap_enabled');
delete_site_option('woocommerce_local_price_labels_wrap_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_prepend' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_append' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_custom_price_label_version');
delete_site_option('alg_wc_custom_price_label_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

