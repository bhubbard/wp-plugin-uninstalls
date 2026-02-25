<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afhpartnerid');
delete_site_option('afhpartnerid');
delete_option('widget-location');
delete_site_option('widget-location');

