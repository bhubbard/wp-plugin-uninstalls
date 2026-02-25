-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twim_debug_mode', 'twim_minified_assets', 'twim_color_theme', 'twim_disable_block_editor');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

