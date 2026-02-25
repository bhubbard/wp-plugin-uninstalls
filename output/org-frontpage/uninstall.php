<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ofp_nb_posts_frontpage');
delete_site_option('ofp_nb_posts_frontpage');
delete_option('ofp_nb_posts_lead');
delete_site_option('ofp_nb_posts_lead');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ofp_post_frontpage_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

