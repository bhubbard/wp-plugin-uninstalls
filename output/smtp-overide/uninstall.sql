-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smtp_override_cbezzy_default_test_email', 'smtp_override_bypass_ssl_verify_cbezzy');

