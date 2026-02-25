-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authorizeipaddress_ip_whitelist', 'authorizeipaddress');

