<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_siga4w_setting');
delete_site_option('_siga4w_setting');
delete_option('widget_siga4w_widget');
delete_site_option('widget_siga4w_widget');

// Delete Transients
delete_transient('siga4w_get_today_cache');
delete_site_transient('siga4w_get_today_cache');
delete_transient('siga4w_get_all_cache');
delete_site_transient('siga4w_get_all_cache');
delete_transient('sig4w_charts_month');
delete_site_transient('sig4w_charts_month');
delete_transient('sig4w_charts_year');
delete_site_transient('sig4w_charts_year');
delete_transient('sig4w_hot_posts_today');
delete_site_transient('sig4w_hot_posts_today');
delete_transient('sig4w_hot_posts_week');
delete_site_transient('sig4w_hot_posts_week');

