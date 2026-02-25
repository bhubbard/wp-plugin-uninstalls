<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('res_terms');
delete_site_option('res_terms');
delete_option('res_calendar_color');
delete_site_option('res_calendar_color');
delete_option('res_color');
delete_site_option('res_color');
delete_option('res_security_plugin');
delete_site_option('res_security_plugin');
delete_option('res_security_settings');
delete_site_option('res_security_settings');
delete_option('res_db_version');
delete_site_option('res_db_version');
delete_option('res_full_uninstall');
delete_site_option('res_full_uninstall');
delete_option('res_incl_email');
delete_site_option('res_incl_email');
delete_option('res_email');
delete_site_option('res_email');
delete_option('res_name');
delete_site_option('res_name');
delete_option('res_email_subject');
delete_site_option('res_email_subject');
delete_option('res_days');
delete_site_option('res_days');

