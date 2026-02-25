<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPMDBUG_enabled');
delete_site_option('WPMDBUG_enabled');
delete_option('WPMDBUG_email');
delete_site_option('WPMDBUG_email');
delete_option('WPMDBUG_plugins');
delete_site_option('WPMDBUG_plugins');

