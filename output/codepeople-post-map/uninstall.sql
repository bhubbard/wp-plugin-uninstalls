-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpm_config', 'cpm_load_resources_in_footer');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpm_point', 'cpm_map');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpm_point', 'cpm_map');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpm_point', 'cpm_map');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpm_point', 'cpm_map');

