<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmb_clientid');
delete_site_option('cmb_clientid');
delete_option('cmb_clientsecret');
delete_site_option('cmb_clientsecret');
delete_option('cmb_calendarid');
delete_site_option('cmb_calendarid');
delete_option('cmb_tytext');
delete_site_option('cmb_tytext');
delete_option('access_token');
delete_site_option('access_token');

