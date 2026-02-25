<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bwa_version');
delete_site_option('bwa_version');
delete_option('bwa_option_send_confirmation_email');
delete_site_option('bwa_option_send_confirmation_email');
delete_option('bwa_option_check_if_user_exists');
delete_site_option('bwa_option_check_if_user_exists');
delete_option('bwa_option_extend_if_user_exists');
delete_site_option('bwa_option_extend_if_user_exists');
delete_option('bwa_option_update_user_data');
delete_site_option('bwa_option_update_user_data');
delete_option('bwa_option_destination_email');
delete_site_option('bwa_option_destination_email');
delete_option('bwa_options_email_include_password');
delete_site_option('bwa_options_email_include_password');
delete_option('rmt_option_create_login_link_existing_users');
delete_site_option('rmt_option_create_login_link_existing_users');
delete_option('rmt_option_page_change_password');
delete_site_option('rmt_option_page_change_password');
delete_option('rmt_option_create_login_link_new_users');
delete_site_option('rmt_option_create_login_link_new_users');

