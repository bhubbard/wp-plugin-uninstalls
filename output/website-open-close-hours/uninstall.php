<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woch_version');
delete_site_option('woch_version');
delete_option('woch_mon_web_status');
delete_site_option('woch_mon_web_status');
delete_option('woch_tues_web_status');
delete_site_option('woch_tues_web_status');
delete_option('woch_wed_web_status');
delete_site_option('woch_wed_web_status');
delete_option('woch_thurs_web_status');
delete_site_option('woch_thurs_web_status');
delete_option('woch_fri_web_status');
delete_site_option('woch_fri_web_status');
delete_option('woch_sat_web_status');
delete_site_option('woch_sat_web_status');
delete_option('woch_sun_web_status');
delete_site_option('woch_sun_web_status');
delete_option('woch_mon_open_time');
delete_site_option('woch_mon_open_time');
delete_option('woch_mon_close_time');
delete_site_option('woch_mon_close_time');
delete_option('woch_tues_open_time');
delete_site_option('woch_tues_open_time');
delete_option('woch_tues_close_time');
delete_site_option('woch_tues_close_time');
delete_option('woch_wed_open_time');
delete_site_option('woch_wed_open_time');
delete_option('woch_wed_close_time');
delete_site_option('woch_wed_close_time');
delete_option('woch_thurs_open_time');
delete_site_option('woch_thurs_open_time');
delete_option('woch_thurs_close_time');
delete_site_option('woch_thurs_close_time');
delete_option('woch_fri_open_time');
delete_site_option('woch_fri_open_time');
delete_option('woch_fri_close_time');
delete_site_option('woch_fri_close_time');
delete_option('woch_sat_open_time');
delete_site_option('woch_sat_open_time');
delete_option('woch_sat_close_time');
delete_site_option('woch_sat_close_time');
delete_option('woch_sun_open_time');
delete_site_option('woch_sun_open_time');
delete_option('woch_sun_close_time');
delete_site_option('woch_sun_close_time');
delete_option('woch_RefererValue');
delete_site_option('woch_RefererValue');
delete_option('woch_RefererValue_page');
delete_site_option('woch_RefererValue_page');
delete_option('woch_redirect_type');
delete_site_option('woch_redirect_type');

// Delete Transients
delete_transient('gwl-webopenclose-admin-notice-activation');
delete_site_transient('gwl-webopenclose-admin-notice-activation');

