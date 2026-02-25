-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_imagereplacement_options');
DELETE FROM wp_options WHERE option_name LIKE '%_replacements';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

