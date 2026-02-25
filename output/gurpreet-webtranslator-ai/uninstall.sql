-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtai_api_key', 'wtai_default_language', 'wtai_post_status', 'wtai_post_keep_image', 'wtai_post_slug_method', 'wtai_post_tags_method', 'wtai_post_custom_tags', 'wtai_post_author', 'wtai_page_status', 'wtai_page_keep_image', 'wtai_page_slug_method', 'wtai_page_author', 'wtai_prod_status', 'wtai_prod_author', 'wtai_prod_slug_method', 'wtai_prod_keep_image', 'wtai_prod_sku_method', 'wtai_prod_price_method', 'wtai_prod_stock_method', 'wtai_prod_attr_method', 'wtai_prod_cat_method', 'wtai_prod_tags_method', 'wtai_prod_custom_tags', 'wtai_prod_gallery_method', 'wtai_prod_brand_method', 'wtai_prod_specific_brand', 'wtai_prod_adv_dims', 'wtai_prod_adv_tax', 'wtai_prod_adv_ship', 'wtai_prod_adv_files', 'wtai_usage_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wtai_source_post_id', '_wtai_lang', '_sku', '_product_attributes', '_product_image_gallery', '_tax_status', '_tax_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wtai_source_post_id', '_wtai_lang', '_sku', '_product_attributes', '_product_image_gallery', '_tax_status', '_tax_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wtai_source_post_id', '_wtai_lang', '_sku', '_product_attributes', '_product_image_gallery', '_tax_status', '_tax_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wtai_source_post_id', '_wtai_lang', '_sku', '_product_attributes', '_product_image_gallery', '_tax_status', '_tax_class');

