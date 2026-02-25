-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blue_ocean_map');
DELETE FROM wp_usermeta WHERE meta_key IN ('blue_ocean_map');
DELETE FROM wp_termmeta WHERE meta_key IN ('blue_ocean_map');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blue_ocean_map');

