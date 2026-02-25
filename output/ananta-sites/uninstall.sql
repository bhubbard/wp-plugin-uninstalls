-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ANANTA_demo_installed', 'sidebars_widgets', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'wishlist_template_select', 'compare_template_select');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_customizer_import';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');

