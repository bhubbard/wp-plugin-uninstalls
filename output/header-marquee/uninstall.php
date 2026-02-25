<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('header_marquee_data_1');
delete_site_option('header_marquee_data_1');
delete_option('header_marquee_data_2');
delete_site_option('header_marquee_data_2');
delete_option('header_marquee_data_6');
delete_site_option('header_marquee_data_6');
delete_option('header_marquee_data');
delete_site_option('header_marquee_data');
delete_option('header_marquee_data_8');
delete_site_option('header_marquee_data_8');
delete_option('header_marquee_data_7');
delete_site_option('header_marquee_data_7');
delete_option('header_marquee_data_5');
delete_site_option('header_marquee_data_5');
delete_option('header_marquee_data_11');
delete_site_option('header_marquee_data_11');
delete_option('header_marquee_data_9');
delete_site_option('header_marquee_data_9');
delete_option('header_marquee_data_10');
delete_site_option('header_marquee_data_10');
delete_option('header_marquee_data_12');
delete_site_option('header_marquee_data_12');
delete_option('header_marquee_data_13');
delete_site_option('header_marquee_data_13');
delete_option('header_marquee_data_15');
delete_site_option('header_marquee_data_15');
delete_option('header_marquee_data_14');
delete_site_option('header_marquee_data_14');
delete_option('header_marquee_data_3');
delete_site_option('header_marquee_data_3');
delete_option('header_marquee_data_4');
delete_site_option('header_marquee_data_4');

