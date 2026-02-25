<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_deadorxp_text');
delete_site_option('wp_deadorxp_text');
delete_option('wp_deadorxp_design');
delete_site_option('wp_deadorxp_design');

