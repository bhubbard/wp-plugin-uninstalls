-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp-check-in', 'bpchk-support', 'active_sitewide_plugins', '_bpchk_is_new_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'bpchk_fav_places');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'bpchk_fav_places');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'bpchk_fav_places');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'bpchk_fav_places');

