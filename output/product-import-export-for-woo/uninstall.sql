-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbte_sc_hidden_promotion_banners', 'wt_p_iew_product_cta_banner_default_page_dismissed', 'wt_ier_pro_banner_dismissed', 'wt_iew_admin_modules', 'wbfte_promotion_banner_version', 'wt_hide_invoice_cta_banner', 'wt_hide_smart_coupon_cta_banner', 'wt_hide_product_ie_cta_banner', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'xa_rev_im_ex_last_import_csv_start_col', 'wf_prod_review_alter_id', 'wt_iew_advanced_settings', 'wt_p_iew_is_active', 'wt_p_iew_basic_json_migration_complete', '_product_welcome_screen_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_review_request';
DELETE FROM wp_options WHERE option_name LIKE '%_start_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_wt_delete_existing', '_stock', '_wp_attachment_image_alt', '_wt_attachment_source', 'display_type', 'thumbnail_id', 'rating', 'verified', 'title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_wt_delete_existing', '_stock', '_wp_attachment_image_alt', '_wt_attachment_source', 'display_type', 'thumbnail_id', 'rating', 'verified', 'title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_wt_delete_existing', '_stock', '_wp_attachment_image_alt', '_wt_attachment_source', 'display_type', 'thumbnail_id', 'rating', 'verified', 'title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_wt_delete_existing', '_stock', '_wp_attachment_image_alt', '_wt_attachment_source', 'display_type', 'thumbnail_id', 'rating', 'verified', 'title');

