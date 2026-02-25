<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('little_message_lite_emails');
delete_site_option('little_message_lite_emails');
delete_option('little_message_lite_sender_email');
delete_site_option('little_message_lite_sender_email');
delete_option('little_message_lite_horizontal_position');
delete_site_option('little_message_lite_horizontal_position');
delete_option('little_message_lite_vertical_position');
delete_site_option('little_message_lite_vertical_position');
delete_option('little_message_lite_horizontal_distance');
delete_site_option('little_message_lite_horizontal_distance');
delete_option('little_message_lite_vertical_distance');
delete_site_option('little_message_lite_vertical_distance');
delete_option('little_message_lite_tab_text');
delete_site_option('little_message_lite_tab_text');
delete_option('little_message_lite_logo_id');
delete_site_option('little_message_lite_logo_id');
delete_option('little_message_lite_welcome_message');
delete_site_option('little_message_lite_welcome_message');
delete_option('little_message_lite_recaptcha_active');
delete_site_option('little_message_lite_recaptcha_active');
delete_option('little_message_lite_recaptcha_version');
delete_site_option('little_message_lite_recaptcha_version');
delete_option('little_message_lite_recaptcha_site_key');
delete_site_option('little_message_lite_recaptcha_site_key');
delete_option('little_message_lite_recaptcha_secret_key');
delete_site_option('little_message_lite_recaptcha_secret_key');
delete_option('little_message_lite_include_credit');
delete_site_option('little_message_lite_include_credit');
delete_option('little_message_lite_whatsapp');
delete_site_option('little_message_lite_whatsapp');
delete_option('little_message_lite_phone');
delete_site_option('little_message_lite_phone');
delete_option('little_message_pro_version_notice_status');
delete_site_option('little_message_pro_version_notice_status');

