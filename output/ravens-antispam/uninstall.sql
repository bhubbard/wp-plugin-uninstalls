-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ras_always_visible', 'ras_own_template_code', 'ras_template_code');
DELETE FROM wp_options WHERE option_name LIKE '%_own_template_code';
DELETE FROM wp_options WHERE option_name LIKE '%_template_code';

