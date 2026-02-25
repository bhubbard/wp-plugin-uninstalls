-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xmlrpcld_allowed_plugins', 'xmlrpcld_custom_allowances');

