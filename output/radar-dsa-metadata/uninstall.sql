-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('radardsa_options', 'radardsa_latest_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_radar_dsa_data', '_radar_dsa_enabled', '_radar_dsa_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_radar_dsa_data', '_radar_dsa_enabled', '_radar_dsa_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_radar_dsa_data', '_radar_dsa_enabled', '_radar_dsa_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_radar_dsa_data', '_radar_dsa_enabled', '_radar_dsa_date');

