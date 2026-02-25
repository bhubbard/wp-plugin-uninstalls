<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('warcraft_news_rewrite_items');
delete_site_option('warcraft_news_rewrite_items');
delete_option('warcraft_news_global_cache_time');
delete_site_option('warcraft_news_global_cache_time');
delete_option('warcraft_news_wowhead');
delete_site_option('warcraft_news_wowhead');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'warcraft_news_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('global_cache_time');
delete_site_option('global_cache_time');

