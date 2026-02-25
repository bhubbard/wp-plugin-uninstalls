-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('designer_variation_front', 'designer_variation_back', 'designer_variation_color', 'designer_variation_prices', 'designer_allow_graphics', 'designer_addon_images', 'designer_addon_prices', 'designer_allow_text', 'designer_allow_custom_upload', 'designer_base_price', 'designer_text_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('designer_variation_front', 'designer_variation_back', 'designer_variation_color', 'designer_variation_prices', 'designer_allow_graphics', 'designer_addon_images', 'designer_addon_prices', 'designer_allow_text', 'designer_allow_custom_upload', 'designer_base_price', 'designer_text_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('designer_variation_front', 'designer_variation_back', 'designer_variation_color', 'designer_variation_prices', 'designer_allow_graphics', 'designer_addon_images', 'designer_addon_prices', 'designer_allow_text', 'designer_allow_custom_upload', 'designer_base_price', 'designer_text_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('designer_variation_front', 'designer_variation_back', 'designer_variation_color', 'designer_variation_prices', 'designer_allow_graphics', 'designer_addon_images', 'designer_addon_prices', 'designer_allow_text', 'designer_allow_custom_upload', 'designer_base_price', 'designer_text_price');

