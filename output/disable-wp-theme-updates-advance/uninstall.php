<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DWTUA_activated_on');
delete_site_option('DWTUA_activated_on');
delete_option('DWTUA_deactivated_on');
delete_site_option('DWTUA_deactivated_on');

