<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyloginforscala_plugin_do_redirect');
delete_site_option('easyloginforscala_plugin_do_redirect');
delete_option('easyloginforscala_api_key');
delete_site_option('easyloginforscala_api_key');
delete_option('easyloginforscala_api_url');
delete_site_option('easyloginforscala_api_url');
delete_option('easyloginforscala_panel_path');
delete_site_option('easyloginforscala_panel_path');
delete_option('easyloginforscala_admin_email');
delete_site_option('easyloginforscala_admin_email');
delete_option('easyloginforscala_accountuser');
delete_site_option('easyloginforscala_accountuser');
delete_option('easyloginforscala_username');
delete_site_option('easyloginforscala_username');
delete_option('easyloginforscala_shortcode_text');
delete_site_option('easyloginforscala_shortcode_text');
delete_option('easyloginforscala_btn_color');
delete_site_option('easyloginforscala_btn_color');
delete_option('easyloginforscala_btn_hover');
delete_site_option('easyloginforscala_btn_hover');
delete_option('easyloginforscala_btn_textcolor');
delete_site_option('easyloginforscala_btn_textcolor');
delete_option('easyloginforscala_btn_textsize');
delete_site_option('easyloginforscala_btn_textsize');

