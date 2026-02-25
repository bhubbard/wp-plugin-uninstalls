<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-anchortab-tab-id');
delete_site_option('wp-anchortab-tab-id');
delete_option('wp-anchortab-load-script-url');
delete_site_option('wp-anchortab-load-script-url');

