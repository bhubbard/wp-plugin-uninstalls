<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hello_popup_redirect_after_activation');
delete_site_option('hello_popup_redirect_after_activation');
delete_option('hello_popup_custom_css');
delete_site_option('hello_popup_custom_css');
delete_option('hello_popup_enabled');
delete_site_option('hello_popup_enabled');
delete_option('hello_popup_title');
delete_site_option('hello_popup_title');
delete_option('hello_popup_message');
delete_site_option('hello_popup_message');
delete_option('hello_popup_image');
delete_site_option('hello_popup_image');
delete_option('hello_popup_delay');
delete_site_option('hello_popup_delay');
delete_option('hello_popup_expiry');
delete_site_option('hello_popup_expiry');
delete_option('hello_popup_auto_show');
delete_site_option('hello_popup_auto_show');
delete_option('hello_popup_selected_pages');
delete_site_option('hello_popup_selected_pages');
delete_option('hello_popup_cta_text');
delete_site_option('hello_popup_cta_text');
delete_option('hello_popup_cta_url');
delete_site_option('hello_popup_cta_url');
delete_option('hello_popup_cta_color');
delete_site_option('hello_popup_cta_color');
delete_option('hello_popup_close_btn_color');
delete_site_option('hello_popup_close_btn_color');
delete_option('hello_popup_shortcode');
delete_site_option('hello_popup_shortcode');

