-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('super_buttons', '_sb_db', '_sb_meta_db');
DELETE FROM wp_options WHERE option_name LIKE '%_text';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_classes';
DELETE FROM wp_options WHERE option_name LIKE '%_text';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_classes';

