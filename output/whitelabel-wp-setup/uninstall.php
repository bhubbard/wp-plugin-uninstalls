<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_whitelabelled_plugins');
delete_site_option('site_whitelabelled_plugins');
delete_option('site_whitelabelled_data');
delete_site_option('site_whitelabelled_data');

