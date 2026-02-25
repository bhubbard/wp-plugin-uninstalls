<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPGAlerts_Max_Alerts');
delete_site_option('WPGAlerts_Max_Alerts');
delete_option('WPGAlerts_Strip_Tags');
delete_site_option('WPGAlerts_Strip_Tags');
delete_option('WPGAlerts_Content_Post');
delete_site_option('WPGAlerts_Content_Post');
delete_option('WPGAlerts_Content_Pre');
delete_site_option('WPGAlerts_Content_Pre');
delete_option('WPGAlerts_Author_Post');
delete_site_option('WPGAlerts_Author_Post');
delete_option('WPGAlerts_Author_Pre');
delete_site_option('WPGAlerts_Author_Pre');
delete_option('WPGAlerts_Title_Post');
delete_site_option('WPGAlerts_Title_Post');
delete_option('WPGAlerts_Title_Pre');
delete_site_option('WPGAlerts_Title_Pre');
delete_option('WPGAlerts_db_version');
delete_site_option('WPGAlerts_db_version');

