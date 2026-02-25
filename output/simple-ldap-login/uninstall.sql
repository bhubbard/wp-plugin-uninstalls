-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpleldap_account_suffix', 'simpleldap_base_dn', 'simpleldap_domain_controllers', 'simpleldap_directory_type', 'simpleldap_group', 'simpleldap_account_type', 'simpleldap_ol_login', 'simpleldap_use_tls', 'simpleldap_login_mode', 'simpleldap_security_mode');

