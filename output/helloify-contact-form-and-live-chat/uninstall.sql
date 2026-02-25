-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('web_customer_id', 'web_customer_email', 'web_customer_email_valid', 'first_install_msg');

