<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('location');
delete_site_option('location');
delete_option('latitude');
delete_site_option('latitude');
delete_option('longitude');
delete_site_option('longitude');
delete_option('timezone');
delete_site_option('timezone');
delete_option('bgcolor');
delete_site_option('bgcolor');
delete_option('fgcolor');
delete_site_option('fgcolor');
delete_option('validLocation');
delete_site_option('validLocation');

