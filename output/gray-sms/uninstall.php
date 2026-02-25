<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grsms_sms_provider');
delete_site_option('grsms_sms_provider');
delete_option('grsms_kb_user_endpoint');
delete_site_option('grsms_kb_user_endpoint');
delete_option('grsms_kb_user_id');
delete_site_option('grsms_kb_user_id');
delete_option('grsms_kb_api_key');
delete_site_option('grsms_kb_api_key');
delete_option('grsms_kb_api_secret_key');
delete_site_option('grsms_kb_api_secret_key');
delete_option('grsms_admin_phone_number');
delete_site_option('grsms_admin_phone_number');
delete_option('grsms_twilio_sid');
delete_site_option('grsms_twilio_sid');
delete_option('grsms_twilio_token');
delete_site_option('grsms_twilio_token');
delete_option('grsms_twilio_from');
delete_site_option('grsms_twilio_from');
delete_option('grsms_enable_admin_notify');
delete_site_option('grsms_enable_admin_notify');
delete_option('grsms_enable_woow_order');
delete_site_option('grsms_enable_woow_order');
delete_option('grsms_woow_order_message');
delete_site_option('grsms_woow_order_message');
delete_option('grsms_enable_woow_complete');
delete_site_option('grsms_enable_woow_complete');
delete_option('grsms_woow_complete_message');
delete_site_option('grsms_woow_complete_message');
delete_option('grsms_enable_woow_proccess');
delete_site_option('grsms_enable_woow_proccess');
delete_option('grsms_woow_process_message');
delete_site_option('grsms_woow_process_message');
delete_option('grsms_enable_woow_cancel');
delete_site_option('grsms_enable_woow_cancel');
delete_option('grsms_woow_cancel_message');
delete_site_option('grsms_woow_cancel_message');
delete_option('grsms_enable_woow_refund');
delete_site_option('grsms_enable_woow_refund');
delete_option('grsms_woow_refund_message');
delete_site_option('grsms_woow_refund_message');
delete_option('grsms_enable_woow_hold');
delete_site_option('grsms_enable_woow_hold');
delete_option('grsms_woow_hold_message');
delete_site_option('grsms_woow_hold_message');

