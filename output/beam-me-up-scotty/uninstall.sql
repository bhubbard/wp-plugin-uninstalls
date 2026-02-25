-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otb_new_theme', 'otb_new_plugin');
DELETE FROM wp_options WHERE option_name LIKE '%_viewed';
DELETE FROM wp_options WHERE option_name LIKE '%hide_delay';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%color';
DELETE FROM wp_options WHERE option_name LIKE '%opacity';
DELETE FROM wp_options WHERE option_name LIKE '%rollover_color';
DELETE FROM wp_options WHERE option_name LIKE '%rollover_opacity';
DELETE FROM wp_options WHERE option_name LIKE '%indentation';
DELETE FROM wp_options WHERE option_name LIKE '%bottom_indentation';
DELETE FROM wp_options WHERE option_name LIKE '%width';
DELETE FROM wp_options WHERE option_name LIKE '%height';
DELETE FROM wp_options WHERE option_name LIKE '%icon_color';
DELETE FROM wp_options WHERE option_name LIKE '%size';
DELETE FROM wp_options WHERE option_name LIKE '%style';
DELETE FROM wp_options WHERE option_name LIKE '%animation';
DELETE FROM wp_options WHERE option_name LIKE '%hide_when_inactive';

