<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webcom_operator_status_custom_css');
delete_site_option('webcom_operator_status_custom_css');
delete_option('webcom_operator_status_api_token');
delete_site_option('webcom_operator_status_api_token');
delete_option('webcom_operator_status_hide_no_alias');
delete_site_option('webcom_operator_status_hide_no_alias');
delete_option('webcom_operator_status_online_image');
delete_site_option('webcom_operator_status_online_image');
delete_option('webcom_operator_status_pause_image');
delete_site_option('webcom_operator_status_pause_image');
delete_option('webcom_operator_status_calling_image');
delete_site_option('webcom_operator_status_calling_image');
delete_option('webcom_operator_status_offline_image');
delete_site_option('webcom_operator_status_offline_image');
delete_option('webcom_operator_status_enable_whitelist');
delete_site_option('webcom_operator_status_enable_whitelist');
delete_option('webcom_operator_status_whitelist');
delete_site_option('webcom_operator_status_whitelist');
delete_option('webcom_operator_status_with_login');
delete_site_option('webcom_operator_status_with_login');
delete_option('webcom_operator_status_with_logout');
delete_site_option('webcom_operator_status_with_logout');
delete_option('webcom_operator_status_with_unreachable');
delete_site_option('webcom_operator_status_with_unreachable');
delete_option('webcom_operator_status_group_name');
delete_site_option('webcom_operator_status_group_name');
delete_option('webcom_operator_status_operator_sort');
delete_site_option('webcom_operator_status_operator_sort');
delete_option('webcom_operator_status_priority');
delete_site_option('webcom_operator_status_priority');
delete_option('webcom_operator_status_with_name');
delete_site_option('webcom_operator_status_with_name');
delete_option('webcom_operator_status_with_status');
delete_site_option('webcom_operator_status_with_status');

