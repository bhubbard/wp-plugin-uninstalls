-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipm_type', 'ipm_menu');
DELETE FROM wp_options WHERE option_name LIKE 'ipm_districts_%';

