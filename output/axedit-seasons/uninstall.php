<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('axdt_spring');
delete_site_option('axdt_spring');
delete_option('axdt_summer');
delete_site_option('axdt_summer');
delete_option('axdt_fall');
delete_site_option('axdt_fall');
delete_option('axdt_winter');
delete_site_option('axdt_winter');

