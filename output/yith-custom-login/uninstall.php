<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_login_mascotte');
delete_site_option('yith_login_mascotte');
delete_option('yith_login_mascotte_url');
delete_site_option('yith_login_mascotte_url');
delete_option('yith_login_background_color');
delete_site_option('yith_login_background_color');
delete_option('yith_login_background_image');
delete_site_option('yith_login_background_image');
delete_option('yith_login_background_repeat');
delete_site_option('yith_login_background_repeat');
delete_option('yith_login_background_position');
delete_site_option('yith_login_background_position');
delete_option('yith_login_background_attachment');
delete_site_option('yith_login_background_attachment');
delete_option('yith_login_logo_image');
delete_site_option('yith_login_logo_image');
delete_option('yith_login_logo_color');
delete_site_option('yith_login_logo_color');
delete_option('yith_login_logo_width');
delete_site_option('yith_login_logo_width');
delete_option('yith_login_logo_height');
delete_site_option('yith_login_logo_height');
delete_option('yith_login_container_width');
delete_site_option('yith_login_container_width');
delete_option('yith_login_typo_input');
delete_site_option('yith_login_typo_input');
delete_option('yith_login_typo_text');
delete_site_option('yith_login_typo_text');
delete_option('yith_login_typo_submit');
delete_site_option('yith_login_typo_submit');
delete_option('yith_login_custom_style');
delete_site_option('yith_login_custom_style');
delete_option('yith_login_color_input');
delete_site_option('yith_login_color_input');
delete_option('yith_login_border_input');
delete_site_option('yith_login_border_input');
delete_option('yith_login_color_input_focus');
delete_site_option('yith_login_color_input_focus');
delete_option('yith_login_border_input_focus');
delete_site_option('yith_login_border_input_focus');
delete_option('yith_login_submit_color');
delete_site_option('yith_login_submit_color');
delete_option('yith_login_submit_border_color');
delete_site_option('yith_login_submit_border_color');
delete_option('yith_login_typo_submit_hover');
delete_site_option('yith_login_typo_submit_hover');
delete_option('yith_login_submit_color_hover');
delete_site_option('yith_login_submit_color_hover');
delete_option('yith_login_submit_border_color_hover');
delete_site_option('yith_login_submit_border_color_hover');
delete_option('yith_login_username_label');
delete_site_option('yith_login_username_label');
delete_option('yith_login_password_label');
delete_site_option('yith_login_password_label');
delete_option('yith_login_enable');
delete_site_option('yith_login_enable');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

