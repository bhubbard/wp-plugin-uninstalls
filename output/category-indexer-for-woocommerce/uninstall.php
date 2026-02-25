<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category_indexer_version');
delete_site_option('category_indexer_version');
delete_option('category_indexer_category_options');
delete_site_option('category_indexer_category_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('category_indexer_option_shop');
delete_site_option('category_indexer_option_shop');
delete_option('category_indexer_option_shop_canonical');
delete_site_option('category_indexer_option_shop_canonical');
delete_option('category_indexer_option_orderby');
delete_site_option('category_indexer_option_orderby');
delete_option('category_indexer_option_url_parameters');
delete_site_option('category_indexer_option_url_parameters');
delete_option('category_indexer_option_search');
delete_site_option('category_indexer_option_search');
delete_option('category_indexer_option_pagination');
delete_site_option('category_indexer_option_pagination');
delete_option('category_indexer_global_category_defaults');
delete_site_option('category_indexer_global_category_defaults');
delete_option('category_indexer_per_page');
delete_site_option('category_indexer_per_page');
delete_option('category_indexer_redirect_log_db_version');
delete_site_option('category_indexer_redirect_log_db_version');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('category_indexer_redirect_options');
delete_site_option('category_indexer_redirect_options');

// Delete Transients
delete_transient('category_indexer_categories');
delete_site_transient('category_indexer_categories');
delete_transient('category_indexer_options');
delete_site_transient('category_indexer_options');
delete_transient('category_indexer_parents');
delete_site_transient('category_indexer_parents');
delete_transient('category_indexer_show_upgrade_notice');
delete_site_transient('category_indexer_show_upgrade_notice');
delete_transient('ci_cleanup_counter');
delete_site_transient('ci_cleanup_counter');

