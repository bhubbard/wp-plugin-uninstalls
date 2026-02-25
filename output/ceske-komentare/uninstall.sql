-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pocet0', 'pocet1', 'pocet2', 'pocet5');

