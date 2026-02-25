<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('content.json');
delete_site_transient('content.json');
delete_transient('widgets.json');
delete_site_transient('widgets.json');
delete_transient('options.json');
delete_site_transient('options.json');
delete_transient('delayed_posts');
delete_site_transient('delayed_posts');
delete_transient('imported_term_ids');
delete_site_transient('imported_term_ids');
delete_transient('imported_post_ids');
delete_site_transient('imported_post_ids');
delete_transient('post_orphans');
delete_site_transient('post_orphans');

