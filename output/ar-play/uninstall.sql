-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arplay_app_url', 'arplay_api_url', 'arplay_woocommerce', 'arplay_plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_arplay_exist', '_product_arplay_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_arplay_exist', '_product_arplay_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_arplay_exist', '_product_arplay_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_arplay_exist', '_product_arplay_path');

