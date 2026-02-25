<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('helion_wyszukiwarka_template');
delete_site_option('helion_wyszukiwarka_template');
delete_option('helion_bookstore_template_main');
delete_site_option('helion_bookstore_template_main');
delete_option('helion_bookstore_template_category');
delete_site_option('helion_bookstore_template_category');
delete_option('helion_bookstore_template_book');
delete_site_option('helion_bookstore_template_book');
delete_option('helion_partner_id');
delete_site_option('helion_partner_id');
delete_option('helion_bookstores');
delete_site_option('helion_bookstores');
delete_option('helion_bookstore_ksiegarnia');
delete_site_option('helion_bookstore_ksiegarnia');
delete_option('helion_bookstore_slug');
delete_site_option('helion_bookstore_slug');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'helion_serie_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'helion_kategorie_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('helion_bookstore_template_serie');
delete_site_option('helion_bookstore_template_serie');
delete_option('helion_current_cache_size');
delete_site_option('helion_current_cache_size');
delete_option('helion_cache_user');
delete_site_option('helion_cache_user');
delete_option('helion_wyszukiwarka_slug');
delete_site_option('helion_wyszukiwarka_slug');

// Clear Cron Jobs
wp_clear_scheduled_hook('helion_download_xmls');
wp_clear_scheduled_hook('helion_import_xmls');
wp_clear_scheduled_hook('helion_download_bestsellers');
wp_clear_scheduled_hook('helion_import_bestsellers');
wp_clear_scheduled_hook('helion_cron_cache_size');
wp_clear_scheduled_hook('helion_reset_cache');

