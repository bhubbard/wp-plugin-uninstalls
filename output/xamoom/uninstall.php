<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xamoom_api_key');
delete_site_option('xamoom_api_key');
delete_option('xamoom_custom_css');
delete_site_option('xamoom_custom_css');

// Delete Transients
delete_transient('xamoom-plugin-activated');
delete_site_transient('xamoom-plugin-activated');

