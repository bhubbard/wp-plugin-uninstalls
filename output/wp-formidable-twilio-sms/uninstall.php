<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfts_formidable_twilio_sms_sender_id');
delete_site_option('wfts_formidable_twilio_sms_sender_id');
delete_option('wfts_formidable_twilio_sms_password');
delete_site_option('wfts_formidable_twilio_sms_password');
delete_option('wfts_formidable_twilio_sms_mobile');
delete_site_option('wfts_formidable_twilio_sms_mobile');
delete_option('wfts_formidable_twilio_sms_mobile_cc');
delete_site_option('wfts_formidable_twilio_sms_mobile_cc');
delete_option('wfts_formidable_twilio_sms_field_id');
delete_site_option('wfts_formidable_twilio_sms_field_id');
delete_option('wfts_formidable_twilio_sms_msg');
delete_site_option('wfts_formidable_twilio_sms_msg');
delete_option('wfts_formidable_twilio_sms_msg_owner');
delete_site_option('wfts_formidable_twilio_sms_msg_owner');
delete_option('wfts_formidable_twilio_sms_debug');
delete_site_option('wfts_formidable_twilio_sms_debug');
delete_option('wfts_formidable_twilio_sms_error_log_path');
delete_site_option('wfts_formidable_twilio_sms_error_log_path');
delete_option('wp_formidable_twilio_sms_debug');
delete_site_option('wp_formidable_twilio_sms_debug');
delete_option('wp_formidable_twilio_sms_error_log_path');
delete_site_option('wp_formidable_twilio_sms_error_log_path');
delete_option('wp_formidable_twilio_sms_field_id');
delete_site_option('wp_formidable_twilio_sms_field_id');
delete_option('wp_formidable_twilio_sms_sender_id');
delete_site_option('wp_formidable_twilio_sms_sender_id');
delete_option('wp_formidable_twilio_sms_password');
delete_site_option('wp_formidable_twilio_sms_password');
delete_option('wp_formidable_twilio_sms_mobile');
delete_site_option('wp_formidable_twilio_sms_mobile');
delete_option('wp_formidable_twilio_sms_mobile_cc');
delete_site_option('wp_formidable_twilio_sms_mobile_cc');
delete_option('wp_formidable_twilio_sms_msg');
delete_site_option('wp_formidable_twilio_sms_msg');
delete_option('wp_formidable_twilio_sms_msg_owner');
delete_site_option('wp_formidable_twilio_sms_msg_owner');

