<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_calendar_host');
delete_site_option('hp_calendar_host');
delete_option('hp_calendar_manage');
delete_site_option('hp_calendar_manage');
delete_option('hp_calendar_language');
delete_site_option('hp_calendar_language');
delete_option('hp_calendar_use_default_style');
delete_site_option('hp_calendar_use_default_style');
delete_option('hp_calendar_api_key');
delete_site_option('hp_calendar_api_key');
delete_option('hp_calendar_callback');
delete_site_option('hp_calendar_callback');
delete_option('hp_calendar_success_callback');
delete_site_option('hp_calendar_success_callback');
delete_option('hp_calendar_homepage');
delete_site_option('hp_calendar_homepage');
delete_option('hp_calendar_logo');
delete_site_option('hp_calendar_logo');
delete_option('hp_calendar_company');
delete_site_option('hp_calendar_company');

