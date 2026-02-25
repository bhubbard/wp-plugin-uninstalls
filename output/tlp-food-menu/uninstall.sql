-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtfm_ny_2025', 'rtfm_spare_me', 'rtfm_plugin_activation_time', 'rtfm_remind_me', 'rtfm_rated', 'rtfm_activation_redirect', 'tlp-food-menu-installed-version', 'tlp_fm_m_3_0', 'woocommerce_currency_pos', 'woocommerce_tax_total_display', 'woocommerce_hide_out_of_stock_items');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', 'fmp_source', '_rtfm_last_active_tab', 'price', 'fmp_categories', '_fmp_image_gallery', '_stock_status', '_wp_attachment_image_alt', 'fmp_cat_thumbnail_id', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', 'fmp_source', '_rtfm_last_active_tab', 'price', 'fmp_categories', '_fmp_image_gallery', '_stock_status', '_wp_attachment_image_alt', 'fmp_cat_thumbnail_id', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', 'fmp_source', '_rtfm_last_active_tab', 'price', 'fmp_categories', '_fmp_image_gallery', '_stock_status', '_wp_attachment_image_alt', 'fmp_cat_thumbnail_id', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', 'fmp_source', '_rtfm_last_active_tab', 'price', 'fmp_categories', '_fmp_image_gallery', '_stock_status', '_wp_attachment_image_alt', 'fmp_cat_thumbnail_id', 'thumbnail_id');

