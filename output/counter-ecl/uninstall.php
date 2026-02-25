<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('counter_ecl_time');
delete_site_option('counter_ecl_time');
delete_option('counter_ecl_time_message');
delete_site_option('counter_ecl_time_message');
delete_option('counter_ecl');
delete_site_option('counter_ecl');
delete_option('counter_ecl_message');
delete_site_option('counter_ecl_message');
delete_option('counter_ecl_message_active');
delete_site_option('counter_ecl_message_active');
delete_option('counter_ecl_color_text');
delete_site_option('counter_ecl_color_text');
delete_option('counter_ecl_color_background');
delete_site_option('counter_ecl_color_background');
delete_option('counter_ecl_effects');
delete_site_option('counter_ecl_effects');
delete_option('counter_ecl_position');
delete_site_option('counter_ecl_position');
delete_option('counter_ecl_hide');
delete_site_option('counter_ecl_hide');

