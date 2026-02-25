-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hex1', 'hex2', 'hex3', 'dc-placement', 'dc-catcolor');

