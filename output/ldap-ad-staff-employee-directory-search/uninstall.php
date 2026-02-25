<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_ldap_ds_server_url');
delete_site_option('mo_ldap_ds_server_url');
delete_option('mo_ldap_ds_server_dn');
delete_site_option('mo_ldap_ds_server_dn');
delete_option('mo_ldap_ds_server_password');
delete_site_option('mo_ldap_ds_server_password');
delete_option('mo_ldap_ds_service_account_status');
delete_site_option('mo_ldap_ds_service_account_status');
delete_option('mo_ldap_ds_search_base');
delete_site_option('mo_ldap_ds_search_base');
delete_option('mo_ldap_ds_use_tls');
delete_site_option('mo_ldap_ds_use_tls');
delete_option('mo_ldap_ds_admin_email');
delete_site_option('mo_ldap_ds_admin_email');
delete_option('mo_ldap_ds_admin_customer_key');
delete_site_option('mo_ldap_ds_admin_customer_key');
delete_option('mo_ldap_ds_customer_token');
delete_site_option('mo_ldap_ds_customer_token');
delete_option('mo_ldap_ds_admin_phone');
delete_site_option('mo_ldap_ds_admin_phone');
delete_option('mo_ldap_ds_verify_customer');
delete_site_option('mo_ldap_ds_verify_customer');
delete_option('mo_ldap_ds_ldap_protocol');
delete_site_option('mo_ldap_ds_ldap_protocol');
delete_option('mo_ldap_ds_directory_server_value');
delete_site_option('mo_ldap_ds_directory_server_value');
delete_option('mo_ldap_ds_ldap_server_address');
delete_site_option('mo_ldap_ds_ldap_server_address');
delete_option('mo_ldap_ds_ldap_port_number');
delete_site_option('mo_ldap_ds_ldap_port_number');
delete_option('mo_ldap_ds_ldaps_port_number');
delete_site_option('mo_ldap_ds_ldaps_port_number');
delete_option('mo_ldap_ds_directory_server_custom_value');
delete_site_option('mo_ldap_ds_directory_server_custom_value');
delete_option('mo_ldap_ds_config');
delete_site_option('mo_ldap_ds_config');
delete_option('mo_ldap_ds_search_by_options');
delete_site_option('mo_ldap_ds_search_by_options');
delete_option('mo_ldap_ds_custom_styling');
delete_site_option('mo_ldap_ds_custom_styling');
delete_option('mo_ldap_ds_config_status');
delete_site_option('mo_ldap_ds_config_status');
delete_option('mo_ldap_ds_show_message');
delete_site_option('mo_ldap_ds_show_message');
delete_option('mo_ldap_ds_phone_number');
delete_site_option('mo_ldap_ds_phone_number');

