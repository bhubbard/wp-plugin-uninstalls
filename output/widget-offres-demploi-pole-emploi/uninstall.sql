-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pe_params', 'pe_clientid', 'pe_clientsecret');

