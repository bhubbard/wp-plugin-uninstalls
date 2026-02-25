<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awshortcode_region');
delete_site_option('awshortcode_region');
delete_option('awshortcode_tracking_id');
delete_site_option('awshortcode_tracking_id');
delete_option('awshortcode_inline_documentation');
delete_site_option('awshortcode_inline_documentation');
delete_option('awshortcode_align');
delete_site_option('awshortcode_align');
delete_option('awshortcode_feed');
delete_site_option('awshortcode_feed');
delete_option('awshortcode_strict_standards');
delete_site_option('awshortcode_strict_standards');
delete_option('awshortcode_context_links');
delete_site_option('awshortcode_context_links');
delete_option('awshortcode_product_preview');
delete_site_option('awshortcode_product_preview');
delete_option('awshortcode_disabled_widgets');
delete_site_option('awshortcode_disabled_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'awshortcode_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awshortcode_tracking_image');
delete_site_option('awshortcode_tracking_image');

