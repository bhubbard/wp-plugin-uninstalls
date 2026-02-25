<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ailo_settings');
delete_site_option('ailo_settings');
delete_option('ailo_links');
delete_site_option('ailo_links');

