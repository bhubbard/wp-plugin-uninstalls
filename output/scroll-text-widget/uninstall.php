<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stw_direction');
delete_site_option('stw_direction');
delete_option('stw_speed');
delete_site_option('stw_speed');

