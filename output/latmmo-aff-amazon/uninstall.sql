-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_price_history', '_asin', '_url', '_brand', '_featured', '_review_count', '_rating', '_system_rating', '_amazon_img', '_merchant_name', '_merchant_id', '_stock', 'is_prime', '_gallery', '_product_list', 'fields_visible_type', 'fields_visible', 'table_enable_redirect_single_product', 'table_text_score', 'table_rating_note', 'table_text_view_on_amazon', 'table_end_note', 'price_text_desc', 'price_text_note', 'layout_type', 'table_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_price_history', '_asin', '_url', '_brand', '_featured', '_review_count', '_rating', '_system_rating', '_amazon_img', '_merchant_name', '_merchant_id', '_stock', 'is_prime', '_gallery', '_product_list', 'fields_visible_type', 'fields_visible', 'table_enable_redirect_single_product', 'table_text_score', 'table_rating_note', 'table_text_view_on_amazon', 'table_end_note', 'price_text_desc', 'price_text_note', 'layout_type', 'table_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_price_history', '_asin', '_url', '_brand', '_featured', '_review_count', '_rating', '_system_rating', '_amazon_img', '_merchant_name', '_merchant_id', '_stock', 'is_prime', '_gallery', '_product_list', 'fields_visible_type', 'fields_visible', 'table_enable_redirect_single_product', 'table_text_score', 'table_rating_note', 'table_text_view_on_amazon', 'table_end_note', 'price_text_desc', 'price_text_note', 'layout_type', 'table_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_price_history', '_asin', '_url', '_brand', '_featured', '_review_count', '_rating', '_system_rating', '_amazon_img', '_merchant_name', '_merchant_id', '_stock', 'is_prime', '_gallery', '_product_list', 'fields_visible_type', 'fields_visible', 'table_enable_redirect_single_product', 'table_text_score', 'table_rating_note', 'table_text_view_on_amazon', 'table_end_note', 'price_text_desc', 'price_text_note', 'layout_type', 'table_layout');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

