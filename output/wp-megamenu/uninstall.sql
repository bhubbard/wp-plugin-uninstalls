-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'wpmm_rating_notice_remove', 'wpmm_options', 'WPMM_VER', 'sidebars_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', 'wpmm_layout', 'wpmm_nav_options', '_menu_item_menu_item_parent', 'metaboxhidden_nav-menus');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', 'wpmm_layout', 'wpmm_nav_options', '_menu_item_menu_item_parent', 'metaboxhidden_nav-menus');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', 'wpmm_layout', 'wpmm_nav_options', '_menu_item_menu_item_parent', 'metaboxhidden_nav-menus');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', 'wpmm_layout', 'wpmm_nav_options', '_menu_item_menu_item_parent', 'metaboxhidden_nav-menus');

