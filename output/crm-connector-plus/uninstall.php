<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPULB_ACTIVE_CRM_ADDON');
delete_site_option('WPULB_ACTIVE_CRM_ADDON');
delete_option('WPULB_ACTIVE_HELPDESK_ADDON');
delete_site_option('WPULB_ACTIVE_HELPDESK_ADDON');
delete_option('WPULB_SCHEDULE_STATUS');
delete_site_option('WPULB_SCHEDULE_STATUS');
delete_option('WPULB_USERS_CONNECTED');
delete_site_option('WPULB_USERS_CONNECTED');
delete_option('WPULB_CRM_USER_SYNC_LEAD_OWNER_OLD');
delete_site_option('WPULB_CRM_USER_SYNC_LEAD_OWNER_OLD');
delete_option('WPULB_HELP_USERS_CONNECTED');
delete_site_option('WPULB_HELP_USERS_CONNECTED');
delete_option('WPULB_HELP_USER_SYNC_LEAD_OWNER_OLD');
delete_site_option('WPULB_HELP_USER_SYNC_LEAD_OWNER_OLD');
delete_option('WPULB_USER_INFO');
delete_site_option('WPULB_USER_INFO');
delete_option('WPULB_WOOCOM_INFO');
delete_site_option('WPULB_WOOCOM_INFO');
delete_option('WPULB_DEFAULT_FORM_LOG');
delete_site_option('WPULB_DEFAULT_FORM_LOG');
delete_option('WPULB_DEFAULT_FORM_MAIL');
delete_site_option('WPULB_DEFAULT_FORM_MAIL');
delete_option('WPULB_ENABLE_CAPTCHA');
delete_site_option('WPULB_ENABLE_CAPTCHA');
delete_option('WPULB_ENABLE_CAPTCHA_PUBLIC_KEY');
delete_site_option('WPULB_ENABLE_CAPTCHA_PUBLIC_KEY');
delete_option('WPULB_ENABLE_CAPTCHA_PRIVATE_KEY');
delete_site_option('WPULB_ENABLE_CAPTCHA_PRIVATE_KEY');
delete_option('WPULB_SELECT_BUYNOW_ADDONS');
delete_site_option('WPULB_SELECT_BUYNOW_ADDONS');
delete_option('INAPP_PURCHASE');
delete_site_option('INAPP_PURCHASE');
delete_option('WPULB_CONNECTED_ZOHOCRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_ZOHOCRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_JOFORCECRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_JOFORCECRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_VTIGERCRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_VTIGERCRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_SUGARCRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_SUGARCRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_FRESHSALESCRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_FRESHSALESCRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_SALESFORCECRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_SALESFORCECRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_SUITECRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_SUITECRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_FRESHDESK_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_FRESHDESK_CREDENTIALS');
delete_option('WPULB_CONNECTED_VTIGERSUPPORT_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_VTIGERSUPPORT_CREDENTIALS');
delete_option('WPULB_CONNECTED_ZENDESK_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_ZENDESK_CREDENTIALS');
delete_option('WPULB_CONNECTED_ZOHOSUPPORT_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_ZOHOSUPPORT_CREDENTIALS');
delete_option('WPULB_RECENTLY_ACTIVATED');
delete_site_option('WPULB_RECENTLY_ACTIVATED');
delete_option('WPULB_DATABUCKET_MIGRATION');
delete_site_option('WPULB_DATABUCKET_MIGRATION');
delete_option('WPULB_PURCHASE_STATUS');
delete_site_option('WPULB_PURCHASE_STATUS');
delete_option('WPULB_LICENSE_TAB');
delete_site_option('WPULB_LICENSE_TAB');
delete_option('WPULB_LICENSE_TAB_ACTIVE');
delete_site_option('WPULB_LICENSE_TAB_ACTIVE');
delete_option('WPULB_ADDON_SLUG');
delete_site_option('WPULB_ADDON_SLUG');
delete_option('BILLING_DETAILS');
delete_site_option('BILLING_DETAILS');
delete_option('WPULB_CONNECTED_CRM_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_CRM_CREDENTIALS');
delete_option('WPULB_CONNECTED_HELPDESK_CREDENTIALS');
delete_site_option('WPULB_CONNECTED_HELPDESK_CREDENTIALS');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'WPULB_INFO_DEFAULT_FORM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WPULB_FIRST_TIME_CRM_CONFIGURATION');
delete_site_option('WPULB_FIRST_TIME_CRM_CONFIGURATION');
delete_option('WPULB_FIRST_TIME_HELP_CONFIGURATION');
delete_site_option('WPULB_FIRST_TIME_HELP_CONFIGURATION');
delete_option('WPULB_USER_ONE_TIME_MANUAL_SYNC');
delete_site_option('WPULB_USER_ONE_TIME_MANUAL_SYNC');
delete_option('WPULB_WOOCOM_PRODUCT_ONE_TIME_MANUAL_SYNC');
delete_site_option('WPULB_WOOCOM_PRODUCT_ONE_TIME_MANUAL_SYNC');
delete_option('WPULB_ACTIVATED_COUNT');
delete_site_option('WPULB_ACTIVATED_COUNT');
delete_option('WPULB_DEACTIVATED_COUNT');
delete_site_option('WPULB_DEACTIVATED_COUNT');
delete_option('WPULB_WOOCOM_CRM_MAPPING');
delete_site_option('WPULB_WOOCOM_CRM_MAPPING');
delete_option('WPULB_USER_CRM_MAPPING');
delete_site_option('WPULB_USER_CRM_MAPPING');
delete_option('WPULB_WOOCOM_HELP_MAPPING');
delete_site_option('WPULB_WOOCOM_HELP_MAPPING');
delete_option('WPULB_USER_HELP_MAPPING');
delete_site_option('WPULB_USER_HELP_MAPPING');
delete_option('WPULB_SCHEDULE_TIME');
delete_site_option('WPULB_SCHEDULE_TIME');

// Clear Cron Jobs
wp_clear_scheduled_hook('leads_builder_schedule_hook');

