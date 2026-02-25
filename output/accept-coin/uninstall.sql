-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_address', 'woocommerce_acceptcoin_settings', 'smtp_host', 'smtp_port', 'smtp_username', 'smtp_password', 'smtp_encryption');

