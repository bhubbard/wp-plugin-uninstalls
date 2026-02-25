-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsv_show_vari_on_shop_cat', 'wsv_show_vari_on_shortcode', 'wsv_hide_parent_product_variable', 'wsv_excludes_category', 'wsv_excludes_attributes', 'wsv_show_vari_keep_first', 'wsv_show_vari_lh_price');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsv_custom_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsv_custom_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsv_custom_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsv_custom_name');

