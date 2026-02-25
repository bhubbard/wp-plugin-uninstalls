-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ab-wp-security-user-enumeration', 'ab-wp-security-wp-version', 'ab-wp-security-xml-rpc', 'ab-wp-security-dir-browse');

