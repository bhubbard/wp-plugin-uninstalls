<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_aatags_opts');
delete_site_option('wp_aatags_opts');
delete_option('wp_aatags_aadnumber');
delete_site_option('wp_aatags_aadnumber');

