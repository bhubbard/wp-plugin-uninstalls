<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiinlito_max_keywords');
delete_site_option('aiinlito_max_keywords');
delete_option('aiinlito_enable_caching');
delete_site_option('aiinlito_enable_caching');
delete_option('aiinlito_db_version');
delete_site_option('aiinlito_db_version');
delete_option('aiinlito_allowed_post_types');
delete_site_option('aiinlito_allowed_post_types');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'aiinlito_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('aiinlito_process_keywords_cron');

