-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('athemeart_activation_redirect', 'woocommerce_shop_page_id', 'sidebars_widgets', 'elementor_container_width');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');

