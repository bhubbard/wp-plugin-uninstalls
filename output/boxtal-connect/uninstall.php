<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'BW_NOTICE_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('BW_NOTICES');
delete_site_option('BW_NOTICES');
delete_option('BW_PAIRING_UPDATE');
delete_site_option('BW_PAIRING_UPDATE');
delete_option('BW_ORDER_SHIPPED');
delete_site_option('BW_ORDER_SHIPPED');
delete_option('BW_ORDER_DELIVERED');
delete_site_option('BW_ORDER_DELIVERED');
delete_option('BW_LOGGING');
delete_site_option('BW_LOGGING');
delete_option('BW_ACCESS_KEY');
delete_site_option('BW_ACCESS_KEY');
delete_option('BW_SECRET_KEY');
delete_site_option('BW_SECRET_KEY');
delete_option('BW_MAP_TOKEN_URL');
delete_site_option('BW_MAP_TOKEN_URL');
delete_option('BW_HELP_CENTER_URL');
delete_site_option('BW_HELP_CENTER_URL');
delete_option('BW_MAP_SETUP_URL');
delete_site_option('BW_MAP_SETUP_URL');
delete_option('BW_NETWORKS_URL');
delete_site_option('BW_NETWORKS_URL');
delete_option('BW_MAP_LOGO_HREF_URL');
delete_site_option('BW_MAP_LOGO_HREF_URL');
delete_option('BW_MAP_LOGO_IMAGE_URL');
delete_site_option('BW_MAP_LOGO_IMAGE_URL');
delete_option('BW_PP_NETWORKS');
delete_site_option('BW_PP_NETWORKS');
delete_option('BW_MAP_BOOTSTRAP_URL');
delete_site_option('BW_MAP_BOOTSTRAP_URL');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

