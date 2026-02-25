<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CNACB_phone_number');
delete_site_option('CNACB_phone_number');
delete_option('CNACB_call_color');
delete_site_option('CNACB_call_color');
delete_option('CNACB_chat_color');
delete_site_option('CNACB_chat_color');
delete_option('CNACB_whatsapp_enabled');
delete_site_option('CNACB_whatsapp_enabled');
delete_option('CNACB_call_text');
delete_site_option('CNACB_call_text');
delete_option('CNACB_chat_number');
delete_site_option('CNACB_chat_number');
delete_option('CNACB_widget_size');
delete_site_option('CNACB_widget_size');
delete_option('CNACB_whatsapp_qr_code_enabled');
delete_site_option('CNACB_whatsapp_qr_code_enabled');
delete_option('CNACB_widget_position');
delete_site_option('CNACB_widget_position');

