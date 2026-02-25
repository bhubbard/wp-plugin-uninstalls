-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('synano_options');
DELETE FROM wp_options WHERE option_name LIKE 'synano_v1_themes_%';
DELETE FROM wp_options WHERE option_name LIKE 'synano_v1_languages_%';
DELETE FROM wp_options WHERE option_name LIKE 'synano_themes_%';
DELETE FROM wp_options WHERE option_name LIKE 'synano_languages_%';

