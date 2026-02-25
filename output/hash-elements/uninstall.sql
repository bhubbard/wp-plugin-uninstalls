-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hash_elements_first_activation', 'hash_elements_dismissed_notices', 'element_pack_active_modules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hash_elements_dismissed_notices', '_elementor_edit_mode', 'panels_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('hash_elements_dismissed_notices', '_elementor_edit_mode', 'panels_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('hash_elements_dismissed_notices', '_elementor_edit_mode', 'panels_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hash_elements_dismissed_notices', '_elementor_edit_mode', 'panels_data');

