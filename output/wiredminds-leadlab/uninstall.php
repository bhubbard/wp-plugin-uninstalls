<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_wm_custnum');
delete_site_option('wp_wm_custnum');
delete_option('wp_wm_consent');
delete_site_option('wp_wm_consent');

