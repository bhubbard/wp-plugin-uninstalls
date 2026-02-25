<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WP_ASSISTANCE_SETTINGS');
delete_site_option('WP_ASSISTANCE_SETTINGS');
delete_option('WP_ASSISTANCE_COMMANDS');
delete_site_option('WP_ASSISTANCE_COMMANDS');

