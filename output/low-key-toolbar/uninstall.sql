-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('low_key_toolbar_on_flg', 'low_key_toolbar_opacity', 'low_key_toolbar_scale', 'low_key_toolbar_margin');
DELETE FROM wp_options WHERE option_name LIKE '%opacity';
DELETE FROM wp_options WHERE option_name LIKE '%scale';
DELETE FROM wp_options WHERE option_name LIKE '%margin';
DELETE FROM wp_options WHERE option_name LIKE '%on_flg';
DELETE FROM wp_options WHERE option_name LIKE 'low_key_toolbar_%';

