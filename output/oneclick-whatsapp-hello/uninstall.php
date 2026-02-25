<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wa_hello_whatsapp_number');
delete_site_option('wa_hello_whatsapp_number');
delete_option('wa_hello_hide_button');
delete_site_option('wa_hello_hide_button');
delete_option('wa_hello_shortcode_message');
delete_site_option('wa_hello_shortcode_message');
delete_option('wa_hello_shortcode_text_button');
delete_site_option('wa_hello_shortcode_text_button');
delete_option('wa_hello_shortcode_target');
delete_site_option('wa_hello_shortcode_target');
delete_option('wa_hello_gdpr_status_enable');
delete_site_option('wa_hello_gdpr_status_enable');
delete_option('wa_hello_gdpr_message');
delete_site_option('wa_hello_gdpr_message');
delete_option('wa_hello_gdpr_privacy_page');
delete_site_option('wa_hello_gdpr_privacy_page');
delete_option('wa_hello_floating_button');
delete_site_option('wa_hello_floating_button');
delete_option('wa_hello_floating_button_position');
delete_site_option('wa_hello_floating_button_position');
delete_option('wa_hello_floating_message');
delete_site_option('wa_hello_floating_message');
delete_option('wa_hello_floating_target');
delete_site_option('wa_hello_floating_target');
delete_option('wa_hello_floating_tooltip_enable');
delete_site_option('wa_hello_floating_tooltip_enable');
delete_option('wa_hello_floating_tooltip');
delete_site_option('wa_hello_floating_tooltip');
delete_option('wa_hello_floating_hide_mobile');
delete_site_option('wa_hello_floating_hide_mobile');
delete_option('wa_hello_option_phone_number');
delete_site_option('wa_hello_option_phone_number');
delete_option('wa_hello_option_message');
delete_site_option('wa_hello_option_message');

