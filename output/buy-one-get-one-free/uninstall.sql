-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pisol_bogo_redirect', 'pisol_bogo_category_rules', 'pisol_free_product', 'pisol_global_disable', 'pisol_product_quantity', 'pisol_free_product_quantity', 'pisol_global_same_product_msg', 'pisol_global_diff_product_msg', 'pisol_bogo_message_bg_color', 'pisol_bogo_message_text_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pisol_enable_bogo');
DELETE FROM wp_usermeta WHERE meta_key IN ('pisol_enable_bogo');
DELETE FROM wp_termmeta WHERE meta_key IN ('pisol_enable_bogo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pisol_enable_bogo');

