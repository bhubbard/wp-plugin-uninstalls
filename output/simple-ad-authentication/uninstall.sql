-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LDAP_authentication_auto_create_user', 'LDAP_authentication_use_ssl', 'LDAP_authentication_server', 'LDAP_authentication_base_dn', 'LDAP_authentication_role_equivalent_groups', 'LDAP_authentication_default_email_domain', 'LDAP_authentication_bind_dn', 'LDAP_authentication_bind_password', 'LDAP_authentication_uid_filter', 'LDAP_authentication_group_filter', 'LDAP_authentication_group_attribute');

