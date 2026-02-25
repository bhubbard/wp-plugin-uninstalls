<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('salespopup_mobile_support');
delete_site_option('salespopup_mobile_support');
delete_option('salespopup_start_time');
delete_site_option('salespopup_start_time');
delete_option('salespopup_showing_time');
delete_site_option('salespopup_showing_time');
delete_option('salespopup_gap_time');
delete_site_option('salespopup_gap_time');
delete_option('salespopup_admin_support');
delete_site_option('salespopup_admin_support');
delete_option('salespopup_frequent_count');
delete_site_option('salespopup_frequent_count');
delete_option('salespopup_change_user_name');
delete_site_option('salespopup_change_user_name');
delete_option('salespopup_freeze_notification');
delete_site_option('salespopup_freeze_notification');
delete_option('salespopup_front_end_support');
delete_site_option('salespopup_front_end_support');
delete_option('salespopup_csv_data');
delete_site_option('salespopup_csv_data');
delete_option('salespopup_notification_bg_color');
delete_site_option('salespopup_notification_bg_color');
delete_option('salespopup_upload_status');
delete_site_option('salespopup_upload_status');

