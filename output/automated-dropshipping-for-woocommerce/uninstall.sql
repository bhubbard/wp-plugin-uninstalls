-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'dse_import_rules', 'dse_imported_list', 'dse_published_list', 'default_product_cat', 'dse_api_token', 'dse_is_pro', 'dse_purchase_code', 'dse_is_activated', 'dse_migrated', 'dse_orders', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'dse_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dse_product_reviews', 'dse_product_url', 'dse_review_ids', 'dse_product', 'dse_source', 'dse_product_id', 'dse_title', 'dse_sku', 'dse_seller_id', 'dse_company_id', 'dse_price', 'dse_discounted_value', 'dse_attributes', 'dse_variations', 'dse_product_images', 'dse_product_variations', 'dse_description', 'dse_imported_product_reviews', 'dse_product_category', 'dse_image_is_external', 'dse_attachment_source', 'dse_disable_sync', 'rating', 'verified', 'dse_order_processing', '_dse_api_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('dse_product_reviews', 'dse_product_url', 'dse_review_ids', 'dse_product', 'dse_source', 'dse_product_id', 'dse_title', 'dse_sku', 'dse_seller_id', 'dse_company_id', 'dse_price', 'dse_discounted_value', 'dse_attributes', 'dse_variations', 'dse_product_images', 'dse_product_variations', 'dse_description', 'dse_imported_product_reviews', 'dse_product_category', 'dse_image_is_external', 'dse_attachment_source', 'dse_disable_sync', 'rating', 'verified', 'dse_order_processing', '_dse_api_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('dse_product_reviews', 'dse_product_url', 'dse_review_ids', 'dse_product', 'dse_source', 'dse_product_id', 'dse_title', 'dse_sku', 'dse_seller_id', 'dse_company_id', 'dse_price', 'dse_discounted_value', 'dse_attributes', 'dse_variations', 'dse_product_images', 'dse_product_variations', 'dse_description', 'dse_imported_product_reviews', 'dse_product_category', 'dse_image_is_external', 'dse_attachment_source', 'dse_disable_sync', 'rating', 'verified', 'dse_order_processing', '_dse_api_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dse_product_reviews', 'dse_product_url', 'dse_review_ids', 'dse_product', 'dse_source', 'dse_product_id', 'dse_title', 'dse_sku', 'dse_seller_id', 'dse_company_id', 'dse_price', 'dse_discounted_value', 'dse_attributes', 'dse_variations', 'dse_product_images', 'dse_product_variations', 'dse_description', 'dse_imported_product_reviews', 'dse_product_category', 'dse_image_is_external', 'dse_attachment_source', 'dse_disable_sync', 'rating', 'verified', 'dse_order_processing', '_dse_api_order');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

