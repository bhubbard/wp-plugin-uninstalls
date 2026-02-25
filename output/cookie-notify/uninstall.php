<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnpl_last_active_panel');
delete_site_option('cnpl_last_active_panel');
delete_option('cnpl_text_panel_opened');
delete_site_option('cnpl_text_panel_opened');
delete_option('cnpl_position');
delete_site_option('cnpl_position');
delete_option('cnpl_content_text');
delete_site_option('cnpl_content_text');
delete_option('cnpl_content_link_regulation_br');
delete_site_option('cnpl_content_link_regulation_br');
delete_option('cnpl_content_link_regulation_text');
delete_site_option('cnpl_content_link_regulation_text');
delete_option('cnpl_content_link_regulation_url');
delete_site_option('cnpl_content_link_regulation_url');
delete_option('cnpl_content_link_howto_br');
delete_site_option('cnpl_content_link_howto_br');
delete_option('cnpl_content_link_howto_text');
delete_site_option('cnpl_content_link_howto_text');
delete_option('cnpl_content_link_howto_url');
delete_site_option('cnpl_content_link_howto_url');
delete_option('cnpl_content_button_text');
delete_site_option('cnpl_content_button_text');
delete_option('cnpl_theme_css_box_inner');
delete_site_option('cnpl_theme_css_box_inner');
delete_option('cnpl_theme_css_box_outer');
delete_site_option('cnpl_theme_css_box_outer');
delete_option('cnpl_theme_css_button');
delete_site_option('cnpl_theme_css_button');
delete_option('cnpl_theme_css_links');
delete_site_option('cnpl_theme_css_links');
delete_option('cnpl_theme_css_text');
delete_site_option('cnpl_theme_css_text');
delete_option('cnpl_settings_time');
delete_site_option('cnpl_settings_time');
delete_option('cnpl_on_off');
delete_site_option('cnpl_on_off');
delete_option('cnpl_remember_border');
delete_site_option('cnpl_remember_border');
delete_option('cnpl_remember_corners');
delete_site_option('cnpl_remember_corners');
delete_option('cnpl_remember_button');
delete_site_option('cnpl_remember_button');
delete_option('cnpl_html');
delete_site_option('cnpl_html');
delete_option('cnpl_js');
delete_site_option('cnpl_js');
delete_option('cnpl_css');
delete_site_option('cnpl_css');
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');
delete_option('cnpl_form_hash');
delete_site_option('cnpl_form_hash');

