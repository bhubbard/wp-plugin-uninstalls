-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email_verify_check_mx', 'email_verify_check_smtp', 'email_verify_check_error', 'email_verify_dep', 'email_verify_dep_error', 'email_verify_emails', 'email_verify_emails_error', 'email_verify_domains', 'email_verify_domains_error', 'email_verify_safelist', 'email_verify_safelist_emails');

