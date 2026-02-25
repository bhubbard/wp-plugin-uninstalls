-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sef_auto_clean', 'sku_error_fixer_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

