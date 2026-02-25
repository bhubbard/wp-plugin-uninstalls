<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agl_cookie_days');
delete_site_option('agl_cookie_days');
delete_option('agl_primary_color');
delete_site_option('agl_primary_color');
delete_option('agl_title_color');
delete_site_option('agl_title_color');
delete_option('agl_main_title');
delete_site_option('agl_main_title');
delete_option('agl_description');
delete_site_option('agl_description');
delete_option('agl_custom_success_message');
delete_site_option('agl_custom_success_message');
delete_option('agl_yes_btn_text');
delete_site_option('agl_yes_btn_text');
delete_option('agl_no_btn_text');
delete_site_option('agl_no_btn_text');
delete_option('agl_test_mode');
delete_site_option('agl_test_mode');
delete_option('agl_logo_img');
delete_site_option('agl_logo_img');
delete_option('agl_age_limit');
delete_site_option('agl_age_limit');
delete_option('agl_safe_link');
delete_site_option('agl_safe_link');

