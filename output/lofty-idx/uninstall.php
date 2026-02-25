<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lofty_idx_needs_rewrite_flush');
delete_site_option('lofty_idx_needs_rewrite_flush');
delete_option('lofty_idx_secret_key');
delete_site_option('lofty_idx_secret_key');
delete_option('lofty_idx_listing_page_id');
delete_site_option('lofty_idx_listing_page_id');
delete_option('lofty_idx_listing_detail_page_id');
delete_site_option('lofty_idx_listing_detail_page_id');
delete_option('lofty_idx_sold_listing_page_id');
delete_site_option('lofty_idx_sold_listing_page_id');
delete_option('lofty_idx_sold_detail_page_id');
delete_site_option('lofty_idx_sold_detail_page_id');
delete_option('lofty_idx_db_version');
delete_site_option('lofty_idx_db_version');
delete_option('lofty_idx_custom_css');
delete_site_option('lofty_idx_custom_css');
delete_option('lofty_idx_custom_js');
delete_site_option('lofty_idx_custom_js');
delete_option('lofty_idx_custom_html');
delete_site_option('lofty_idx_custom_html');
delete_option('widget_lofty_widget_quick_search');
delete_site_option('widget_lofty_widget_quick_search');
delete_option('lofty_idx_settings');
delete_site_option('lofty_idx_settings');

