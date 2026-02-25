<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gl_db_version');
delete_site_option('gl_db_version');
delete_option('instant_locations');
delete_site_option('instant_locations');
delete_option('instant_locations_settings');
delete_site_option('instant_locations_settings');

