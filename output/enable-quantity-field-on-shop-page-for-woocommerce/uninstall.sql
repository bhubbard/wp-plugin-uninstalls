-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('istwqfs_qty_field_enable', 'istwqfs_qty_label_enable', 'istwqfs_quantity_label', 'istwqfs_qty_label_font_color', 'istwqfs_qty_label_font_weight', 'istwqfs_qty_label_font_size', 'istwqfs_product_added_message');
DELETE FROM wp_options WHERE option_name LIKE '%istwqfserror';

