-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inspiredmonks_security_header_options', 'inspiredmonks_security_header_version', 'inspiredmonks_header_validation_errors');

