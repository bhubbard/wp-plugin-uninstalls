<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nyt_bestseller_listings_apiKey');
delete_site_option('nyt_bestseller_listings_apiKey');
delete_option('nyt_bestseller_listings_defaultList');
delete_site_option('nyt_bestseller_listings_defaultList');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_apiKey' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_CatalogLinkFormat' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bestseller-lists-nyt-plugin-version');
delete_site_option('bestseller-lists-nyt-plugin-version');
delete_option('{self::}_apiKey');
delete_site_option('{self::}_apiKey');
delete_option('{self::}_defaultList');
delete_site_option('{self::}_defaultList');
delete_option('{self::}_CatalogLinkFormat');
delete_site_option('{self::}_CatalogLinkFormat');

