-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_designer_settings', 'product_designer_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('clipart_meta_options', 'shape_meta_options', 'pd_template_id', 'clipart_price', 'tdesigner_custom_design', 'side_data', 'shape_thumb_id', 'canvas', 'pre_templates', 'templates', '_sale_price', '_regular_price', 'address', 'customer_name', 'quantity', 'product_id', 'shape_price', 'clipart_thumb_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('clipart_meta_options', 'shape_meta_options', 'pd_template_id', 'clipart_price', 'tdesigner_custom_design', 'side_data', 'shape_thumb_id', 'canvas', 'pre_templates', 'templates', '_sale_price', '_regular_price', 'address', 'customer_name', 'quantity', 'product_id', 'shape_price', 'clipart_thumb_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('clipart_meta_options', 'shape_meta_options', 'pd_template_id', 'clipart_price', 'tdesigner_custom_design', 'side_data', 'shape_thumb_id', 'canvas', 'pre_templates', 'templates', '_sale_price', '_regular_price', 'address', 'customer_name', 'quantity', 'product_id', 'shape_price', 'clipart_thumb_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('clipart_meta_options', 'shape_meta_options', 'pd_template_id', 'clipart_price', 'tdesigner_custom_design', 'side_data', 'shape_thumb_id', 'canvas', 'pre_templates', 'templates', '_sale_price', '_regular_price', 'address', 'customer_name', 'quantity', 'product_id', 'shape_price', 'clipart_thumb_id');

