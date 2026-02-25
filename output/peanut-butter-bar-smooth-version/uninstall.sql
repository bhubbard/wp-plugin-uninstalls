-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbb-error-values', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_smooth';
DELETE FROM wp_options WHERE option_name LIKE '%_smoothdbver';

