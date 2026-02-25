<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'integromat_api_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('integromat_api_options_comment');
delete_site_option('integromat_api_options_comment');
delete_option('integromat_api_options_post');
delete_site_option('integromat_api_options_post');
delete_option('integromat_api_options_term');
delete_site_option('integromat_api_options_term');
delete_option('integromat_api_options_user');
delete_site_option('integromat_api_options_user');

