<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hex1');
delete_site_option('hex1');
delete_option('hex2');
delete_site_option('hex2');
delete_option('hex3');
delete_site_option('hex3');
delete_option('dc-placement');
delete_site_option('dc-placement');
delete_option('dc-catcolor');
delete_site_option('dc-catcolor');

