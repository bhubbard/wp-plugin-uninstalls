-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w2pshop_do_activation_redirect', 'w2pshop_data_presets_handler_db_version', 'w2pshop_saved_designs_rewrite_flushed', 'w2pshop_saved_data_handler_db_version', 'w2pshop_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_w2pshop_product', '_udraw_apparel_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('_w2pshop_product', '_udraw_apparel_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('_w2pshop_product', '_udraw_apparel_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_w2pshop_product', '_udraw_apparel_product');

