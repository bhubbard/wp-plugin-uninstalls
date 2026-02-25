<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_cc_version');
delete_site_option('wp_cc_version');
delete_option('wp_cc_license');
delete_site_option('wp_cc_license');
delete_option('wp_cc_auto_text');
delete_site_option('wp_cc_auto_text');
delete_option('wp_cc_auto_image');
delete_site_option('wp_cc_auto_image');
delete_option('wp_cc_auto_metadata');
delete_site_option('wp_cc_auto_metadata');

