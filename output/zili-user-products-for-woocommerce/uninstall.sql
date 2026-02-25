-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_user_products_add_to_my_account', 'alg_wc_user_products_my_account_tab_content', 'alg_wc_user_products_fields_enabled', 'alg_wc_user_products_fields_required', 'alg_wc_user_products_status', 'alg_wc_user_products_user_visibility', 'alg_wc_user_products_product_type', 'alg_wc_user_products_custom_taxonomies_total', 'alg_wc_user_products_custom_taxonomy_enabled', 'alg_wc_user_products_custom_taxonomy_required', 'alg_wc_user_products_custom_taxonomy_id', 'alg_wc_user_products_custom_taxonomy_title', 'alg_wc_user_products_custom_fields_total', 'alg_wc_user_products_custom_field_enabled', 'alg_wc_user_products_custom_field_required', 'alg_wc_user_products_custom_field_meta_key', 'alg_wc_user_products_custom_field_title', 'alg_wc_user_products_require_unique_title', 'alg_wc_user_products_emails_enabled', 'alg_wc_user_products_emails_to', 'alg_wc_user_products_emails_subject', 'alg_wc_user_products_emails_message', 'alg_wc_user_products_message_product_successfully_added', 'alg_wc_user_products_message_product_successfully_edited', 'alg_wc_user_products_price_step', 'woocommerce_price_num_decimals', 'alg_wc_user_products_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_product_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_product_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_product_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_product_url');

