<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpleldap_account_suffix');
delete_site_option('simpleldap_account_suffix');
delete_option('simpleldap_base_dn');
delete_site_option('simpleldap_base_dn');
delete_option('simpleldap_domain_controllers');
delete_site_option('simpleldap_domain_controllers');
delete_option('simpleldap_directory_type');
delete_site_option('simpleldap_directory_type');
delete_option('simpleldap_group');
delete_site_option('simpleldap_group');
delete_option('simpleldap_account_type');
delete_site_option('simpleldap_account_type');
delete_option('simpleldap_ol_login');
delete_site_option('simpleldap_ol_login');
delete_option('simpleldap_use_tls');
delete_site_option('simpleldap_use_tls');
delete_option('simpleldap_login_mode');
delete_site_option('simpleldap_login_mode');
delete_option('simpleldap_security_mode');
delete_site_option('simpleldap_security_mode');

