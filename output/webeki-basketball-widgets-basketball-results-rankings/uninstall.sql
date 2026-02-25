-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raeven_b', 'raodd_b', 'caeven_b', 'caodd_b', 'fcfrcolumn_b', 'fcfrrow_b', 'customizeSettingB');

