<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urbipb_enable_disclaimer');
delete_site_option('urbipb_enable_disclaimer');
delete_option('urbipb_disclaimer_html');
delete_site_option('urbipb_disclaimer_html');
delete_option('urbipb_disclaimer_fixed');
delete_site_option('urbipb_disclaimer_fixed');
delete_option('urbipb_disclaimer_background');
delete_site_option('urbipb_disclaimer_background');
delete_option('urbipb_disclaimer_icon');
delete_site_option('urbipb_disclaimer_icon');
delete_option('urbipb_disclaimer_start_date');
delete_site_option('urbipb_disclaimer_start_date');
delete_option('urbipb_disclaimer_start_time');
delete_site_option('urbipb_disclaimer_start_time');
delete_option('urbipb_disclaimer_end_date');
delete_site_option('urbipb_disclaimer_end_date');
delete_option('urbipb_disclaimer_end_time');
delete_site_option('urbipb_disclaimer_end_time');
delete_option('urbipb_exclude_pages');
delete_site_option('urbipb_exclude_pages');
delete_option('urbipb_cookie_expire');
delete_site_option('urbipb_cookie_expire');
delete_option('urbipb_enable_localhost');
delete_site_option('urbipb_enable_localhost');
delete_option('urbipb_cookie_set_value');
delete_site_option('urbipb_cookie_set_value');
delete_option('urbipb_announce_delay');
delete_site_option('urbipb_announce_delay');

