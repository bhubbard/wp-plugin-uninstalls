<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('wcus_nova_poshta_default_carrier');
delete_site_option('wcus_nova_poshta_default_carrier');
delete_option('wcus_show_poshtomats');
delete_site_option('wcus_show_poshtomats');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_ukr_shipping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcus_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_transient_shipping-transient-version');
delete_site_option('_transient_shipping-transient-version');
delete_option('wcus_ukrposhta_default_carrier');
delete_site_option('wcus_ukrposhta_default_carrier');
delete_option('wc_ukr_shipping_workers_version');
delete_site_option('wc_ukr_shipping_workers_version');
delete_option('wc_ukr_shipping_spinner_color');
delete_site_option('wc_ukr_shipping_spinner_color');
delete_option('wc_ukr_shipping_np_lang');
delete_site_option('wc_ukr_shipping_np_lang');

// Delete Transients
delete_transient('smarty_parcel_acc');
delete_site_transient('smarty_parcel_acc');
delete_transient('smartyparcel_manifest');
delete_site_transient('smartyparcel_manifest');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcus_smartyparcel_auto_create_label');

