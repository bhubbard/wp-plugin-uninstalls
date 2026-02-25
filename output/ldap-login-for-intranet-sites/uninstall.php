<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_ldap_local_enable_login');
delete_site_option('mo_ldap_local_enable_login');
delete_option('mo_ldap_local_enable_ldap_add');
delete_site_option('mo_ldap_local_enable_ldap_add');
delete_option('mo_ldap_local_current_plugin_version');
delete_site_option('mo_ldap_local_current_plugin_version');
delete_option('mo_ldap_local_username_attribute');
delete_site_option('mo_ldap_local_username_attribute');
delete_option('custom_ldap_username_attribute');
delete_site_option('custom_ldap_username_attribute');
delete_option('mo_ldap_directory_server_value');
delete_site_option('mo_ldap_directory_server_value');
delete_option('mo_ldap_local_search_filter');
delete_site_option('mo_ldap_local_search_filter');
delete_option('mo_ldap_local_customer_token');
delete_site_option('mo_ldap_local_customer_token');
delete_option('mo_ldap_local_email_attribute');
delete_site_option('mo_ldap_local_email_attribute');
delete_option('mo_ldap_local_register_user');
delete_site_option('mo_ldap_local_register_user');
delete_option('mo_ldap_local_admin_email');
delete_site_option('mo_ldap_local_admin_email');
delete_option('mo_ldap_local_host_name');
delete_site_option('mo_ldap_local_host_name');
delete_option('mo_ldap_local_admin_phone');
delete_site_option('mo_ldap_local_admin_phone');
delete_option('mo_ldap_local_admin_customer_key');
delete_site_option('mo_ldap_local_admin_customer_key');
delete_option('mo_ldap_local_admin_api_key');
delete_site_option('mo_ldap_local_admin_api_key');
delete_option('mo_ldap_local_message');
delete_site_option('mo_ldap_local_message');
delete_option('en_save_config');
delete_site_option('en_save_config');
delete_option('mo_ldap_local_service_account_status');
delete_site_option('mo_ldap_local_service_account_status');
delete_option('mo_ldap_local_user_mapping_status');
delete_site_option('mo_ldap_local_user_mapping_status');
delete_option('mo_ldap_local_multisite_message');
delete_site_option('mo_ldap_local_multisite_message');
delete_option('mo_ldap_local_verify_customer');
delete_site_option('mo_ldap_local_verify_customer');
delete_option('mo_ldap_local_new_registration');
delete_site_option('mo_ldap_local_new_registration');
delete_option('mo_ldap_local_search_base');
delete_site_option('mo_ldap_local_search_base');
delete_option('mo_ldap_local_server_dn');
delete_site_option('mo_ldap_local_server_dn');
delete_option('mo_ldap_local_server_password');
delete_site_option('mo_ldap_local_server_password');
delete_option('Filter_search');
delete_site_option('Filter_search');
delete_option('mo_ldap_local_use_tls');
delete_site_option('mo_ldap_local_use_tls');
delete_option('mo_ldap_local_server_url_status');
delete_site_option('mo_ldap_local_server_url_status');
delete_option('mo_ldap_local_server_url');
delete_site_option('mo_ldap_local_server_url');
delete_option('mo_ldap_local_username_status');
delete_site_option('mo_ldap_local_username_status');
delete_option('mo_ldap_local_password_status');
delete_site_option('mo_ldap_local_password_status');
delete_option('mo_ldap_local_wp_to_ldap_search_base');
delete_site_option('mo_ldap_local_wp_to_ldap_search_base');
delete_option('mo_ldap_local_email_domain');
delete_site_option('mo_ldap_local_email_domain');
delete_option('mo_ldap_local_mapping_value_default');
delete_site_option('mo_ldap_local_mapping_value_default');
delete_option('mo_ldap_local_admin_fname');
delete_site_option('mo_ldap_local_admin_fname');
delete_option('mo_ldap_local_admin_lname');
delete_site_option('mo_ldap_local_admin_lname');
delete_option('mo_ldap_local_admin_company');
delete_site_option('mo_ldap_local_admin_company');
delete_option('mo_ldap_local_enable_admin_wp_login');
delete_site_option('mo_ldap_local_enable_admin_wp_login');
delete_option('mo_ldap_local_enable_role_mapping');
delete_site_option('mo_ldap_local_enable_role_mapping');
delete_option('mo_ldap_local_keep_existing_user_roles');
delete_site_option('mo_ldap_local_keep_existing_user_roles');
delete_option('user_logs_table_exists');
delete_site_option('user_logs_table_exists');
delete_option('mo_ldap_local_directory_server');
delete_site_option('mo_ldap_local_directory_server');
delete_option('mo_ldap_local_ldap_protocol');
delete_site_option('mo_ldap_local_ldap_protocol');
delete_option('mo_ldap_local_ldap_port_number');
delete_site_option('mo_ldap_local_ldap_port_number');
delete_option('mo_ldap_local_ldap_server_address');
delete_site_option('mo_ldap_local_ldap_server_address');
delete_option('mo_ldap_local_save_config_status');
delete_site_option('mo_ldap_local_save_config_status');
delete_option('mo_ldap_export');
delete_site_option('mo_ldap_export');
delete_option('mo_ldap_local_admin_token');
delete_site_option('mo_ldap_local_admin_token');
delete_option('mo_ldap_local_registration_status');
delete_site_option('mo_ldap_local_registration_status');
delete_option('mo_ldap_local_user_table_updated');
delete_site_option('mo_ldap_local_user_table_updated');
delete_option('mo_ldap_local_user_report_log');
delete_site_option('mo_ldap_local_user_report_log');
delete_option('mo_ldap_directory_server_custom_value');
delete_site_option('mo_ldap_directory_server_custom_value');
delete_option('mo_ldap_local_ldaps_port_number');
delete_site_option('mo_ldap_local_ldaps_port_number');
delete_option('import_flag');
delete_site_option('import_flag');
delete_option('mo_ldap_local_email_count');
delete_site_option('mo_ldap_local_email_count');
delete_option('mo_ldap_local_sms_count');
delete_site_option('mo_ldap_local_sms_count');
delete_option('mo_ldap_local_anonymous_bind');
delete_site_option('mo_ldap_local_anonymous_bind');
delete_option('mo_ldap_local_enable_log_requests');
delete_site_option('mo_ldap_local_enable_log_requests');
delete_option('mo_ldap_local_role_mapping_count');
delete_site_option('mo_ldap_local_role_mapping_count');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mo_ldap_local_mapping_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mo_ldap_local_mapping_value_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mo_ldap_local_company');
delete_site_option('mo_ldap_local_company');
delete_option('mo_ldap_local_mapping_memberof_attribute');
delete_site_option('mo_ldap_local_mapping_memberof_attribute');
delete_option('mo_ldap_local_skip_redirectto_parameter');
delete_site_option('mo_ldap_local_skip_redirectto_parameter');
delete_option('mo_ldap_local_empty_pointers');
delete_site_option('mo_ldap_local_empty_pointers');
delete_option('mo_ldap_local_search_bases_list');
delete_site_option('mo_ldap_local_search_bases_list');

// Delete Transients
delete_transient('mo_ldap_local_is_config_success');
delete_site_transient('mo_ldap_local_is_config_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mo_ldap_user_dn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mo_ldap_user_dn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mo_ldap_user_dn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mo_ldap_user_dn' ) );

