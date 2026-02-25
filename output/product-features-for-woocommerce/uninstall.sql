-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pffwc_textarea_meta_value_key', '_pffwc_product_key_values', '_pffwc_text_field_meta_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pffwc_textarea_meta_value_key', '_pffwc_product_key_values', '_pffwc_text_field_meta_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pffwc_textarea_meta_value_key', '_pffwc_product_key_values', '_pffwc_text_field_meta_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pffwc_textarea_meta_value_key', '_pffwc_product_key_values', '_pffwc_text_field_meta_value_key');

