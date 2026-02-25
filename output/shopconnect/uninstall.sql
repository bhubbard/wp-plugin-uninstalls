-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('miga_shopconnect_storefront_token', 'miga_shopconnect_shop_url', 'miga_shopconnect_prefetch', 'miga_shopconnect_language', 'miga_shopconnect_country', 'miga_shopconnect_hide_side_card', 'miga_shopconnect_show_side_card', 'miga_shopconnect_close_accordion', 'miga_shopconnect_show_recommendations', 'miga_shopconnect_recommendations_meta', 'miga_shopconnect_recommendations_meta_len', 'miga_shopconnect_recommendations_amount', 'miga_shopconnect_recommendations_layout', 'miga_shopconnect_store_button_text', 'miga_shopconnect_metafields_json', 'miga_shopconnect_storefront_sync', 'miga_shopconnect_policy_text', 'miga_shopconnect_permalink_products', 'miga_shopconnect_permalink_collections');
DELETE FROM wp_options WHERE option_name LIKE 'shopconnect_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('layout_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('layout_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('layout_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('layout_type');

