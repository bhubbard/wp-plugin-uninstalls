<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_custom_login_page_image');
delete_site_option('simple_custom_login_page_image');
delete_option('simple_custom_login_page_url');
delete_site_option('simple_custom_login_page_url');
delete_option('simple_custom_login_page_background');
delete_site_option('simple_custom_login_page_background');
delete_option('simple_custom_login_page_form_bg');
delete_site_option('simple_custom_login_page_form_bg');
delete_option('simple_custom_login_page_text_color');
delete_site_option('simple_custom_login_page_text_color');
delete_option('simple_custom_login_page_link_color');
delete_site_option('simple_custom_login_page_link_color');

