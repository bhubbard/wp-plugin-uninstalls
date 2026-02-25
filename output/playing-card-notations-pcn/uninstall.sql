-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcards-font', 'pcards-suite-colours', 'pcards-suite-style');

