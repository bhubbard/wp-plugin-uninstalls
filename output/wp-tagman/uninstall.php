<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_tagman_gtm_code');
delete_site_option('wp_tagman_gtm_code');
delete_option('wp_tagman_options');
delete_site_option('wp_tagman_options');

