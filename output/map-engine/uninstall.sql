-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvme_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('map_engine', 'map_settings', 'styles', 'map_global_styles');
DELETE FROM wp_usermeta WHERE meta_key IN ('map_engine', 'map_settings', 'styles', 'map_global_styles');
DELETE FROM wp_termmeta WHERE meta_key IN ('map_engine', 'map_settings', 'styles', 'map_global_styles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('map_engine', 'map_settings', 'styles', 'map_global_styles');

