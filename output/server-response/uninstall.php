<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remove_wp_json');
delete_site_option('remove_wp_json');
delete_option('remove_rest_output_link_header');
delete_site_option('remove_rest_output_link_header');
delete_option('remove_wp_shortlink_header');
delete_site_option('remove_wp_shortlink_header');
delete_option('create_expires');
delete_site_option('create_expires');

