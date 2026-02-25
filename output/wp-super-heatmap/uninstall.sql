-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_super_heatmap_date_options', 'wp_super_heatmap_options');

