-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_wsb_brands_admin_tab_general_labels', 'wc_wsb_brands_admin_tab_show_in_cart', 'wc_wsb_brands_admin_tab_single_position', 'wc_wsb_brands_admin_tab_loop_position', 'wsb_brands_admin_tab_show_single_product', 'wc_wsb_brands_admin_tab_show_label_single_product', 'wsb_brands_logo_height_single_product', 'wsb_brands_admin_tab_show_product_loop', 'wc_wsb_brands_admin_tab_show_label_loop', 'wsb_brands_logo_height_archive', 'wc_wsb_brands_admin_tab_archive_position', 'wc_wsb_brands_admin_tab_show_logo_archive', 'wc_wsb_brands_admin_tab_show_title_archive', 'wc_wsb_brands_brand_archive_bgcolor', 'wc_wsb_brands_brand_archive_border_thickness', 'wc_wsb_brands_brand_archive_border_color', 'wc_wsb_brands_admin_tab_single_product_tab');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('url', 'logo', 'wsb_brands');
DELETE FROM wp_usermeta WHERE meta_key IN ('url', 'logo', 'wsb_brands');
DELETE FROM wp_termmeta WHERE meta_key IN ('url', 'logo', 'wsb_brands');
DELETE FROM wp_commentmeta WHERE meta_key IN ('url', 'logo', 'wsb_brands');

