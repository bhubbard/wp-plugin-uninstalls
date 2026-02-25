<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SULly_System_Settings');
delete_site_option('SULly_System_Settings');
delete_option('SULly_Removed');
delete_site_option('SULly_Removed');
delete_option('EntriesToDisplay');
delete_site_option('EntriesToDisplay');
delete_option('PageEntriesToDisplay');
delete_site_option('PageEntriesToDisplay');
delete_option('SULly_DBVersion');
delete_site_option('SULly_DBVersion');
delete_option('SULly_Entries_To_Display');
delete_site_option('SULly_Entries_To_Display');
delete_option('SULly_Page_Entries_To_Display');
delete_site_option('SULly_Page_Entries_To_Display');
delete_option('SULly_Disable_WP_Email_Notifications');
delete_site_option('SULly_Disable_WP_Email_Notifications');
delete_option('SULly_Send_Email_Notifications');
delete_site_option('SULly_Send_Email_Notifications');

