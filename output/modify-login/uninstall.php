<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modify_login_settings');
delete_site_option('modify_login_settings');
delete_option('modify_login_login_endpoint');
delete_site_option('modify_login_login_endpoint');
delete_option('modify_login_rewrite_rules_flushed');
delete_site_option('modify_login_rewrite_rules_flushed');
delete_option('modify_login_background_color');
delete_site_option('modify_login_background_color');
delete_option('modify_login_form_background');
delete_site_option('modify_login_form_background');
delete_option('modify_login_button_color');
delete_site_option('modify_login_button_color');
delete_option('modify_login_button_text_color');
delete_site_option('modify_login_button_text_color');
delete_option('modify_login_background_image');
delete_site_option('modify_login_background_image');
delete_option('modify_login_background_size');
delete_site_option('modify_login_background_size');
delete_option('modify_login_background_position');
delete_site_option('modify_login_background_position');
delete_option('modify_login_background_repeat');
delete_site_option('modify_login_background_repeat');
delete_option('modify_login_background_opacity');
delete_site_option('modify_login_background_opacity');
delete_option('modify_login_logo_url');
delete_site_option('modify_login_logo_url');
delete_option('modify_login_form_border_radius');
delete_site_option('modify_login_form_border_radius');
delete_option('modify_login_form_padding');
delete_site_option('modify_login_form_padding');
delete_option('modify_login_custom_css');
delete_site_option('modify_login_custom_css');
delete_option('modify_login_label_color');
delete_site_option('modify_login_label_color');
delete_option('modify_login_link_color');
delete_site_option('modify_login_link_color');
delete_option('modify_login_link_hover_color');
delete_site_option('modify_login_link_hover_color');
delete_option('modify_login_version');
delete_site_option('modify_login_version');
delete_option('modify_login_previous_endpoint');
delete_site_option('modify_login_previous_endpoint');
delete_option('modify_login_logo_width');
delete_site_option('modify_login_logo_width');
delete_option('modify_login_logo_height');
delete_site_option('modify_login_logo_height');
delete_option('modify_login_logo_position');
delete_site_option('modify_login_logo_position');
delete_option('modify_login_enable_recaptcha');
delete_site_option('modify_login_enable_recaptcha');
delete_option('modify_login_recaptcha_site_key');
delete_site_option('modify_login_recaptcha_site_key');

