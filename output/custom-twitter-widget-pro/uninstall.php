<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ETWP_settings');
delete_site_option('ETWP_settings');
delete_option('ETWP_twitter_sticky_settings');
delete_site_option('ETWP_twitter_sticky_settings');

