<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7dp_effect');
delete_site_option('cf7dp_effect');
delete_option('cf7dp_show_week');
delete_site_option('cf7dp_show_week');
delete_option('cf7dp_monyearmenu');
delete_site_option('cf7dp_monyearmenu');
delete_option('cf7dp_date');
delete_site_option('cf7dp_date');

