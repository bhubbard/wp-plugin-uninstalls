-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfih_on_product', 'gfih_product_hide_single_cpt_page', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'gfih_on_pages', 'gfih_action_location', 'woocommerce_marketplace_suggestions', 'amplify_plugins_woo_suggestions_update', 'amplify_plugins_random_suggestion', 'amplify_plugins_suggestions');
DELETE FROM wp_options WHERE option_name LIKE '%_featured_image';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_single_cpt_page';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id');

