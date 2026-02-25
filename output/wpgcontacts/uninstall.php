<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgoco_info');
delete_site_option('wpgoco_info');
delete_option('wpgoco_license_key');
delete_site_option('wpgoco_license_key');
delete_option('wpgoco_access_code');
delete_site_option('wpgoco_access_code');
delete_option('wpgoco_verify');
delete_site_option('wpgoco_verify');
delete_option('wpgoco_token');
delete_site_option('wpgoco_token');
delete_option('google_sheet_info');
delete_site_option('google_sheet_info');
delete_option('wpgoco_cf7_field_map');
delete_site_option('wpgoco_cf7_field_map');
delete_option('wpgoco_wpform_field_map');
delete_site_option('wpgoco_wpform_field_map');
delete_option('wpgoco_gravityform_field_map');
delete_site_option('wpgoco_gravityform_field_map');
delete_option('wpgoco_ninjaform_field_map');
delete_site_option('wpgoco_ninjaform_field_map');
delete_option('wpgoco_manual_setting');
delete_site_option('wpgoco_manual_setting');
delete_option('wpgoco_access_manual_code');
delete_site_option('wpgoco_access_manual_code');
delete_option('wpgoco_client_id');
delete_site_option('wpgoco_client_id');
delete_option('wpgoco_secret_id');
delete_site_option('wpgoco_secret_id');
delete_option('wpgoco_sheetId');
delete_site_option('wpgoco_sheetId');
delete_option('wpgoco_sheetTabs');
delete_site_option('wpgoco_sheetTabs');
delete_option('wpgoco_email_account');
delete_site_option('wpgoco_email_account');
delete_option('wpgoco_pro_upgrade_notice_interval');
delete_site_option('wpgoco_pro_upgrade_notice_interval');
delete_option('wpgoco_pro_close_upgrade_notice');
delete_site_option('wpgoco_pro_close_upgrade_notice');
delete_option('wpgoco_token_manual');
delete_site_option('wpgoco_token_manual');
delete_option('wpgoco_email_account_manual');
delete_site_option('wpgoco_email_account_manual');

