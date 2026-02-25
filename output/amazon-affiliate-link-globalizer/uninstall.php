<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('waalg_enable_asin');
delete_site_option('waalg_enable_asin');
delete_option('waalg_enable_keyw');
delete_site_option('waalg_enable_keyw');
delete_option('waalg_affilate_id');
delete_site_option('waalg_affilate_id');
delete_option('waalg_ascsubtag');
delete_site_option('waalg_ascsubtag');
delete_option('waalg_fallback');
delete_site_option('waalg_fallback');
delete_option('waalg_add_url');
delete_site_option('waalg_add_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woboq_amazon_link_globalizer_affiliate_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('waalg_enabled_asin');
delete_site_option('waalg_enabled_asin');
delete_option('waalg_enabled_keyw');
delete_site_option('waalg_enabled_keyw');

