<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LDAP_authentication_auto_create_user');
delete_site_option('LDAP_authentication_auto_create_user');
delete_option('LDAP_authentication_use_ssl');
delete_site_option('LDAP_authentication_use_ssl');
delete_option('LDAP_authentication_server');
delete_site_option('LDAP_authentication_server');
delete_option('LDAP_authentication_base_dn');
delete_site_option('LDAP_authentication_base_dn');
delete_option('LDAP_authentication_role_equivalent_groups');
delete_site_option('LDAP_authentication_role_equivalent_groups');
delete_option('LDAP_authentication_default_email_domain');
delete_site_option('LDAP_authentication_default_email_domain');
delete_option('LDAP_authentication_bind_dn');
delete_site_option('LDAP_authentication_bind_dn');
delete_option('LDAP_authentication_bind_password');
delete_site_option('LDAP_authentication_bind_password');
delete_option('LDAP_authentication_uid_filter');
delete_site_option('LDAP_authentication_uid_filter');
delete_option('LDAP_authentication_group_filter');
delete_site_option('LDAP_authentication_group_filter');
delete_option('LDAP_authentication_group_attribute');
delete_site_option('LDAP_authentication_group_attribute');

