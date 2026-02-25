<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nzmpnt_zoom_plan');
delete_site_option('nzmpnt_zoom_plan');
delete_option('nzmpnt_account_id');
delete_site_option('nzmpnt_account_id');
delete_option('nzmpnt_client_id');
delete_site_option('nzmpnt_client_id');
delete_option('nzmpnt_client_secret');
delete_site_option('nzmpnt_client_secret');
delete_option('nzmpnt_zoom_user_email');
delete_site_option('nzmpnt_zoom_user_email');
delete_option('nzmpnt_wstart_time');
delete_site_option('nzmpnt_wstart_time');
delete_option('nzmpnt_wend_time');
delete_site_option('nzmpnt_wend_time');
delete_option('nzmpnt_slot_duration');
delete_site_option('nzmpnt_slot_duration');
delete_option('nzmpnt_zoom_timezone');
delete_site_option('nzmpnt_zoom_timezone');
delete_option('nzmpnt_plugin_custom_css');
delete_site_option('nzmpnt_plugin_custom_css');

