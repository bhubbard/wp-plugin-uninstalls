-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfm_settings_tab_custom_out_of_stock_selection_value', 'wfm_settings_tab_custom_add-to-cart', 'wfm_settings_tab_custom_checkout', 'wfm_settings_tab_custom_place-order', 'wfm_settings_tab_custom_add_sku', 'wfm_settings_tab_custom_out_of_stock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_stock_value', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_stock_value', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_stock_value', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_stock_value', '_stock_status');

