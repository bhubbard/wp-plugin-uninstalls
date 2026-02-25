-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kt_color_grid_sets', 'kt_color_grid_custom', 'kt_color_grid_visual', 'kt_color_grid_palette', 'kt_color_grid_oceanwp_alpha', 'kt_color_grid_gp_alpha', 'kt_color_grid_type', 'kt_color_grid_mce_reset', 'kt_color_grid_astra_theme', 'kt_color_grid_gp');

