-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duplica_version', 'duplica_install_time', 'duplica_settings_init', 'duplica_docs_json');
DELETE FROM wp_options WHERE option_name LIKE 'cx-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_assets');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_assets');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_assets');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_assets');

