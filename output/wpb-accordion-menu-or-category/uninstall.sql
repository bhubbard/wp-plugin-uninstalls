-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpb_wmca_pro_discount_dismissed', 'wpb_wmca_data_socure', 'wpb_wmca_accordion_skin', 'wpb_wmca_keyboard_accessibility', 'wpb_wmca_collapse_previous', 'wpb_wmca_tax_hide_out_of_stock', 'wpb_wmca_menu_id', 'wpb_wmca_menu_depth', 'wpb_wmca_hierarchical_post_type', 'wpb_wmca_hierarchical_post_depth', 'wpb_wmca_hierarchical_post_orderby', 'wpb_wmca_taxonomy', 'wpb_wmca_tax_orderby', 'wpb_wmca_tax_order', 'wpb_wmca_tax_show_count', 'wpb_wmca_tax_hide_empty');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpb_wmca_pro_discount_dismissed', 'wpb_wmca_data_socure', 'wpb_wmca_accordion_skin', 'wpb_wmca_keyboard_accessibility', 'wpb_wmca_collapse_previous', 'wpb_wmca_tax_hide_out_of_stock', 'wpb_wmca_menu_id', 'wpb_wmca_menu_depth', 'wpb_wmca_hierarchical_post_type', 'wpb_wmca_hierarchical_post_depth', 'wpb_wmca_hierarchical_post_orderby', 'wpb_wmca_taxonomy', 'wpb_wmca_tax_orderby', 'wpb_wmca_tax_order', 'wpb_wmca_tax_show_count', 'wpb_wmca_tax_hide_empty');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpb_wmca_pro_discount_dismissed', 'wpb_wmca_data_socure', 'wpb_wmca_accordion_skin', 'wpb_wmca_keyboard_accessibility', 'wpb_wmca_collapse_previous', 'wpb_wmca_tax_hide_out_of_stock', 'wpb_wmca_menu_id', 'wpb_wmca_menu_depth', 'wpb_wmca_hierarchical_post_type', 'wpb_wmca_hierarchical_post_depth', 'wpb_wmca_hierarchical_post_orderby', 'wpb_wmca_taxonomy', 'wpb_wmca_tax_orderby', 'wpb_wmca_tax_order', 'wpb_wmca_tax_show_count', 'wpb_wmca_tax_hide_empty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpb_wmca_pro_discount_dismissed', 'wpb_wmca_data_socure', 'wpb_wmca_accordion_skin', 'wpb_wmca_keyboard_accessibility', 'wpb_wmca_collapse_previous', 'wpb_wmca_tax_hide_out_of_stock', 'wpb_wmca_menu_id', 'wpb_wmca_menu_depth', 'wpb_wmca_hierarchical_post_type', 'wpb_wmca_hierarchical_post_depth', 'wpb_wmca_hierarchical_post_orderby', 'wpb_wmca_taxonomy', 'wpb_wmca_tax_orderby', 'wpb_wmca_tax_order', 'wpb_wmca_tax_show_count', 'wpb_wmca_tax_hide_empty');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%[]';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%[]';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%[]';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[]';

