<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('server_allow');
delete_site_option('server_allow');
delete_option('requested_activation_key');
delete_site_option('requested_activation_key');
delete_option('enable_disable_plugin');
delete_site_option('enable_disable_plugin');
delete_option('user_end_code_to_check');
delete_site_option('user_end_code_to_check');
delete_option('kbiz_registration_email');
delete_site_option('kbiz_registration_email');
delete_option('kabiz_button_text');
delete_site_option('kabiz_button_text');
delete_option('kabiz_move_to_cart_button_text');
delete_site_option('kabiz_move_to_cart_button_text');
delete_option('get_option_save_for_list');
delete_site_option('get_option_save_for_list');
delete_option('kbiz_activation_key');
delete_site_option('kbiz_activation_key');
delete_option('api_url_for_activation');
delete_site_option('api_url_for_activation');

