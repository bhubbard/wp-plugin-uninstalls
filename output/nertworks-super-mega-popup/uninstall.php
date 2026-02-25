<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('super_mega_include_stylesheets');
delete_site_option('super_mega_include_stylesheets');
delete_option('popup_selection');
delete_site_option('popup_selection');
delete_option('super_mega_popup_enabled');
delete_site_option('super_mega_popup_enabled');
delete_option('super_mega_popup_multi_site_all');
delete_site_option('super_mega_popup_multi_site_all');
delete_option('colorbox_popup_show_when_logged_in');
delete_site_option('colorbox_popup_show_when_logged_in');
delete_option('colorbox_popup_show_when_logged_out');
delete_site_option('colorbox_popup_show_when_logged_out');
delete_option('super_mega_popup_multi_site_domain');
delete_site_option('super_mega_popup_multi_site_domain');
delete_option('super_mega_theme_jquery_enabled');
delete_site_option('super_mega_theme_jquery_enabled');
delete_option('super_mega_popup_cookie');
delete_site_option('super_mega_popup_cookie');
delete_option('url_of_popup1');
delete_site_option('url_of_popup1');
delete_option('super_mega_popup_specific_or_global');
delete_site_option('super_mega_popup_specific_or_global');
delete_option('super_mega_popup_source');
delete_site_option('super_mega_popup_source');
delete_option('super_mega_popup_colorbox_theme');
delete_site_option('super_mega_popup_colorbox_theme');
delete_option('super_mega_colobox_mode');
delete_site_option('super_mega_colobox_mode');
delete_option('colorbox_popup_width');
delete_site_option('colorbox_popup_width');
delete_option('colorbox_popup_height');
delete_site_option('colorbox_popup_height');
delete_option('super_mega_popup_message1_heading');
delete_site_option('super_mega_popup_message1_heading');
delete_option('super_mega_popup_message1');
delete_site_option('super_mega_popup_message1');
delete_option('super_mega_popup_multi_site_enabled');
delete_site_option('super_mega_popup_multi_site_enabled');
delete_option('nertworks-popup-settings-group');
delete_site_option('nertworks-popup-settings-group');
delete_option('nertworks_popup_plugin_do_activation_redirect_popup');
delete_site_option('nertworks_popup_plugin_do_activation_redirect_popup');
delete_option('super_mega_popup_message_shortcode');
delete_site_option('super_mega_popup_message_shortcode');

