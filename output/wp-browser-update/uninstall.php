<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_browserupdate_browsers');
delete_site_option('wp_browserupdate_browsers');
delete_option('wp_browserupdate_js');
delete_site_option('wp_browserupdate_js');
delete_option('wp_browserupdate_css_buorg');
delete_site_option('wp_browserupdate_css_buorg');

