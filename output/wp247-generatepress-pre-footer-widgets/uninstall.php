<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('generate_background_settings');
delete_site_option('generate_background_settings');
delete_option('generate_settings');
delete_site_option('generate_settings');
delete_option('generate_spacing_settings');
delete_site_option('generate_spacing_settings');

