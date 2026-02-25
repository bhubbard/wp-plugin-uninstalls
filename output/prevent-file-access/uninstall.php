<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('host_name');
delete_site_option('host_name');
delete_option('mo_enable_media_restriction');
delete_site_option('mo_enable_media_restriction');
delete_option('mo_media_restriction_allowed_dirs');
delete_site_option('mo_media_restriction_allowed_dirs');
delete_option('mo_mr_redirect_to');
delete_site_option('mo_mr_redirect_to');
delete_option('mo_media_restriction_security_logs');
delete_site_option('mo_media_restriction_security_logs');
delete_option('mo_media_restriction_file_types');
delete_site_option('mo_media_restriction_file_types');
delete_option('mo_mr_restrict_option');
delete_site_option('mo_mr_restrict_option');
delete_option('mo_media_restriction_choose_server');
delete_site_option('mo_media_restriction_choose_server');
delete_option('mo_media_restriction_message');
delete_site_option('mo_media_restriction_message');
delete_option('mo_media_restriction_admin_email');
delete_site_option('mo_media_restriction_admin_email');
delete_option('mo_media_restriction_admin_phone');
delete_site_option('mo_media_restriction_admin_phone');
delete_option('mo_media_restriction_show_rules');
delete_site_option('mo_media_restriction_show_rules');
delete_option('mo_media_restriction_admin_fname');
delete_site_option('mo_media_restriction_admin_fname');
delete_option('mo_media_restriction_admin_lname');
delete_site_option('mo_media_restriction_admin_lname');
delete_option('mo_media_restriction_admin_company');
delete_site_option('mo_media_restriction_admin_company');
delete_option('mo_media_restriction_new_user');
delete_site_option('mo_media_restriction_new_user');
delete_option('mo_media_restriction_admin_customer_key');
delete_site_option('mo_media_restriction_admin_customer_key');
delete_option('mo_media_restriction_admin_api_key');
delete_site_option('mo_media_restriction_admin_api_key');
delete_option('customer_token');
delete_site_option('customer_token');
delete_option('password');
delete_site_option('password');
delete_option('mo_media_restriction_last_requested_api');
delete_site_option('mo_media_restriction_last_requested_api');
delete_option('mo_media_restriction_folder_list');
delete_site_option('mo_media_restriction_folder_list');
delete_option('mo_role_base_restriction_folder_list');
delete_site_option('mo_role_base_restriction_folder_list');

