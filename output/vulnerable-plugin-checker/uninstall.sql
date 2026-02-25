-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vpc_email_address', 'vpc_allow_emails', 'vpc-plugin-data');

