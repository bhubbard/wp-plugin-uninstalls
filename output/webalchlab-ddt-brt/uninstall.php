<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brt-dtt-next_number');
delete_site_option('brt-dtt-next_number');
delete_option('brt-dtt-mitt_default');
delete_site_option('brt-dtt-mitt_default');
delete_option('brt-dtt-tracking_enable');
delete_site_option('brt-dtt-tracking_enable');
delete_option('brt-dtt-tracking_required');
delete_site_option('brt-dtt-tracking_required');
delete_option('brt-dtt-tracking_length');
delete_site_option('brt-dtt-tracking_length');
delete_option('brt-dtt-checkformat');
delete_site_option('brt-dtt-checkformat');
delete_option('brt-dtt-cod-mitt');
delete_site_option('brt-dtt-cod-mitt');

