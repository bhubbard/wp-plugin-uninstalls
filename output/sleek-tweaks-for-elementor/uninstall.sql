-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sleek_tweaks_settings', 'elementor_active_kit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings');

