-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_ldap_ds_server_url', 'mo_ldap_ds_server_dn', 'mo_ldap_ds_server_password', 'mo_ldap_ds_service_account_status', 'mo_ldap_ds_search_base', 'mo_ldap_ds_use_tls', 'mo_ldap_ds_admin_email', 'mo_ldap_ds_admin_customer_key', 'mo_ldap_ds_customer_token', 'mo_ldap_ds_admin_phone', 'mo_ldap_ds_verify_customer', 'mo_ldap_ds_ldap_protocol', 'mo_ldap_ds_directory_server_value', 'mo_ldap_ds_ldap_server_address', 'mo_ldap_ds_ldap_port_number', 'mo_ldap_ds_ldaps_port_number', 'mo_ldap_ds_directory_server_custom_value', 'mo_ldap_ds_config', 'mo_ldap_ds_search_by_options', 'mo_ldap_ds_custom_styling', 'mo_ldap_ds_config_status', 'mo_ldap_ds_show_message', 'mo_ldap_ds_phone_number');

