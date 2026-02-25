<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lb_maintenance_mode_option_enabled');
delete_site_option('lb_maintenance_mode_option_enabled');

