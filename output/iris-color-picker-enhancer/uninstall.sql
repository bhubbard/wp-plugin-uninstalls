-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icpe_color_palettes1', 'icpe_color_palettes2', 'icpe_color_palettes3', 'icpe_color_palettes4', 'icpe_color_palettes5', 'icpe_color_palettes6', 'icpe_color_palettes7', 'icpe_color_alpha', 'icp_active');

