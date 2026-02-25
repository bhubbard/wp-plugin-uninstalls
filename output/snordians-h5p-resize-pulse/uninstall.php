<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('h5presizepulse_version');
delete_site_option('h5presizepulse_version');
delete_option('h5presizepulse_defaults_set');
delete_site_option('h5presizepulse_defaults_set');
delete_option('h5presizepulse_option');
delete_site_option('h5presizepulse_option');

