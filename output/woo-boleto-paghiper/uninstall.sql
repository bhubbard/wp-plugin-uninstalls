-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paghiper_pix_settings', 'woocommerce_paghiper_billet_settings', 'woocommerce_manage_stock', 'woocommerce_paghiper_db_version', 'woocommerce_paghiper_settings', 'woocommerce_permalinks', 'woo_paghiper_apikey_valid', 'woo_paghiper_notice_2_1', 'woo_paghiper_notice_install_date', 'woo_paghiper_notice_review_done', 'woo_paghiper_notice_review_ignore');

