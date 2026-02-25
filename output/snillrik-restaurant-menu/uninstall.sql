-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snillrik_restaurant_ingredients', 'snillrik_restaurant_cahstype', 'snillrik_restaurant_cahsplace', 'snillrik_restaurant_decimals');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_snillrik_restaurant_dishprice', '_snillrik_restaurant_dish_ingredients', '_selected_boxes', '_selected_boxes_prices', 'snrest_menu_style', 'snrest_showcategory', 'snrest_hideimage', 'snrest_linktitle', 'snrest_category', 'snrest_orderby', '_menu_footer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_snillrik_restaurant_dishprice', '_snillrik_restaurant_dish_ingredients', '_selected_boxes', '_selected_boxes_prices', 'snrest_menu_style', 'snrest_showcategory', 'snrest_hideimage', 'snrest_linktitle', 'snrest_category', 'snrest_orderby', '_menu_footer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_snillrik_restaurant_dishprice', '_snillrik_restaurant_dish_ingredients', '_selected_boxes', '_selected_boxes_prices', 'snrest_menu_style', 'snrest_showcategory', 'snrest_hideimage', 'snrest_linktitle', 'snrest_category', 'snrest_orderby', '_menu_footer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_snillrik_restaurant_dishprice', '_snillrik_restaurant_dish_ingredients', '_selected_boxes', '_selected_boxes_prices', 'snrest_menu_style', 'snrest_showcategory', 'snrest_hideimage', 'snrest_linktitle', 'snrest_category', 'snrest_orderby', '_menu_footer');

