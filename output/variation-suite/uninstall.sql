-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grid_background_color', 'variation_prices_enabled', 'variations_display_mode', 'variation_prices_appearance', 'variation_prices_show_on', 'label_swatch_shape', 'color_swatch_shape', 'image_swatch_shape', 'label_swatch_shape_size', 'color_swatch_shape_size', 'image_swatch_shape_size', 'vsw-table_columns', 'table_location', 'table_header_color', 'table_out_of_stock_row_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vsw-swatch-term-image', 'vsw-swatch-term-color', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('vsw-swatch-term-image', 'vsw-swatch-term-color', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('vsw-swatch-term-image', 'vsw-swatch-term-color', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vsw-swatch-term-image', 'vsw-swatch-term-color', '_product_attributes');

