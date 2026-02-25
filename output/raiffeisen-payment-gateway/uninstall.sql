-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raiaccept_applepay_endpoint_registered', 'raiaccept_applepay_endpoint_error');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

