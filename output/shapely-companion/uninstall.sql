-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'shapely_imported_demo', 'jetpack_portfolio', 'jetpack_testimonial');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_extra', '_menu_item_widget', '_wp_page_template', 'shapely_companion_portfolio_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_extra', '_menu_item_widget', '_wp_page_template', 'shapely_companion_portfolio_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_extra', '_menu_item_widget', '_wp_page_template', 'shapely_companion_portfolio_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_extra', '_menu_item_widget', '_wp_page_template', 'shapely_companion_portfolio_link');

