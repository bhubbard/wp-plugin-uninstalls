<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dtime_convert');
delete_site_option('dtime_convert');
delete_option('ee_widget');
delete_site_option('ee_widget');
delete_option('ddatefunc_string');
delete_site_option('ddatefunc_string');
delete_option('dtime_widget');
delete_site_option('dtime_widget');
delete_option('dtime_widgetsec');
delete_site_option('dtime_widgetsec');
delete_option('ddatefunc_change');
delete_site_option('ddatefunc_change');
delete_option('dtimefunc_change');
delete_site_option('dtimefunc_change');

