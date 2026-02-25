-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcb_option');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_update';
DELETE FROM wp_options WHERE option_name LIKE '%_updated_info';
DELETE FROM wp_options WHERE option_name LIKE '%_updated_succes';
DELETE FROM wp_options WHERE option_name LIKE '%_updated_warning';

