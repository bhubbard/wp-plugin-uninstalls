<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myanalytics_setting_use_webmaster_tools');
delete_site_option('myanalytics_setting_use_webmaster_tools');
delete_option('myanalytics_setting_code_id');
delete_site_option('myanalytics_setting_code_id');
delete_option('myanalytics_setting_code');
delete_site_option('myanalytics_setting_code');
delete_option('myanalytics_setting_code_letter');
delete_site_option('myanalytics_setting_code_letter');
delete_option('myanalytics_setting_message');
delete_site_option('myanalytics_setting_message');
delete_option('myanalytics_setting_message_dnt');
delete_site_option('myanalytics_setting_message_dnt');
delete_option('myanalytics_setting_message_decline');
delete_site_option('myanalytics_setting_message_decline');

