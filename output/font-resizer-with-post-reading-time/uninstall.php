<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsc_disable_option');
delete_site_option('fsc_disable_option');
delete_option('fsc_reading_time_pre_text');
delete_site_option('fsc_reading_time_pre_text');
delete_option('fsc_btn_bg');
delete_site_option('fsc_btn_bg');
delete_option('fsc_btn_color');
delete_site_option('fsc_btn_color');
delete_option('fsc_btn_border');
delete_site_option('fsc_btn_border');
delete_option('fsc_reading_time_bg');
delete_site_option('fsc_reading_time_bg');
delete_option('fsc_reading_time_color');
delete_site_option('fsc_reading_time_color');

