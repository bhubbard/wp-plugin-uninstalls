<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('global_wc_sms_gateway');
delete_site_option('global_wc_sms_gateway');
delete_option('global_wc_sms_country_code');
delete_site_option('global_wc_sms_country_code');
delete_option('global_wc_sms_enabled_statuses');
delete_site_option('global_wc_sms_enabled_statuses');
delete_option('global_wc_sms_on_hold_template');
delete_site_option('global_wc_sms_on_hold_template');
delete_option('global_wc_sms_processing_template');
delete_site_option('global_wc_sms_processing_template');
delete_option('global_wc_sms_completed_template');
delete_site_option('global_wc_sms_completed_template');
delete_option('global_wc_sms_cancelled_template');
delete_site_option('global_wc_sms_cancelled_template');
delete_option('global_wc_sms_logs');
delete_site_option('global_wc_sms_logs');
delete_option('global_wc_sms_bulksmsbd_api_key');
delete_site_option('global_wc_sms_bulksmsbd_api_key');
delete_option('global_wc_sms_bulksmsbd_sender_id');
delete_site_option('global_wc_sms_bulksmsbd_sender_id');
delete_option('global_wc_sms_twilio_account_sid');
delete_site_option('global_wc_sms_twilio_account_sid');
delete_option('global_wc_sms_twilio_auth_token');
delete_site_option('global_wc_sms_twilio_auth_token');
delete_option('global_wc_sms_twilio_phone_number');
delete_site_option('global_wc_sms_twilio_phone_number');
delete_option('global_wc_sms_vonage_api_key');
delete_site_option('global_wc_sms_vonage_api_key');
delete_option('global_wc_sms_vonage_api_secret');
delete_site_option('global_wc_sms_vonage_api_secret');
delete_option('global_wc_sms_vonage_from_number');
delete_site_option('global_wc_sms_vonage_from_number');
delete_option('global_wc_sms_msg91_auth_key');
delete_site_option('global_wc_sms_msg91_auth_key');
delete_option('global_wc_sms_msg91_sender_id');
delete_site_option('global_wc_sms_msg91_sender_id');

