-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ext_dismissed_info_banner', 'woocommerce_dismissed_info_banner', 'woocommerce_ba_id', 'woocommerce_bmerch_id');

