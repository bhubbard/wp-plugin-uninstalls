<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintenance_mode_settings_polyplugins');
delete_site_option('maintenance_mode_settings_polyplugins');

