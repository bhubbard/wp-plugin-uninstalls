<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_email_logo_url');
delete_site_option('custom_email_logo_url');
delete_option('custom_email_logo_alignment');
delete_site_option('custom_email_logo_alignment');
delete_option('custom_email_footer_text');
delete_site_option('custom_email_footer_text');
delete_option('custom_email_preserve_data');
delete_site_option('custom_email_preserve_data');
delete_option('custom_email_from_email');
delete_site_option('custom_email_from_email');
delete_option('custom_email_from_name');
delete_site_option('custom_email_from_name');
delete_option('custom_email_reply_to');
delete_site_option('custom_email_reply_to');
delete_option('custom_email_avatar_url');
delete_site_option('custom_email_avatar_url');
delete_option('custom_email_bg_color');
delete_site_option('custom_email_bg_color');
delete_option('custom_email_container_bg_color');
delete_site_option('custom_email_container_bg_color');
delete_option('custom_email_header_border_color');
delete_site_option('custom_email_header_border_color');
delete_option('custom_email_primary_text_color');
delete_site_option('custom_email_primary_text_color');
delete_option('custom_email_secondary_text_color');
delete_site_option('custom_email_secondary_text_color');
delete_option('custom_email_footer_text_color');
delete_site_option('custom_email_footer_text_color');
delete_option('custom_email_footer_border_color');
delete_site_option('custom_email_footer_border_color');
delete_option('custom_email_button_bg_color');
delete_site_option('custom_email_button_bg_color');
delete_option('custom_email_button_text_color');
delete_site_option('custom_email_button_text_color');
delete_option('custom_email_exclude_tutor_lms');
delete_site_option('custom_email_exclude_tutor_lms');
delete_option('custom_email_exclude_woocommerce');
delete_site_option('custom_email_exclude_woocommerce');
delete_option('custom_email_use_smtp');
delete_site_option('custom_email_use_smtp');
delete_option('custom_email_smtp_host');
delete_site_option('custom_email_smtp_host');
delete_option('custom_email_smtp_auth');
delete_site_option('custom_email_smtp_auth');
delete_option('custom_email_smtp_port');
delete_site_option('custom_email_smtp_port');
delete_option('custom_email_smtp_username');
delete_site_option('custom_email_smtp_username');
delete_option('custom_email_smtp_password');
delete_site_option('custom_email_smtp_password');
delete_option('custom_email_smtp_encryption');
delete_site_option('custom_email_smtp_encryption');
delete_option('custom_email_smtp_debug');
delete_site_option('custom_email_smtp_debug');

