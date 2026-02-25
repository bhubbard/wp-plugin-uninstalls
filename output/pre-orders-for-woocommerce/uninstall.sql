-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_preorders_avaiable_date_text', 'csf_demo_mode', 'bp_preorder', 'wc_preorders_mode', 'preorder-review-dismiss', 'bp22-dismiss', 'wc_preorders_button_text', 'wc_preorders_status_text', 'woocommerce_preorders_show_general_cart_notice', 'wc_preorders_cart_product_text', 'wc_preorders_badge_text', 'woocommerce_email_footer_text', 'preorder-review-dismiss-temp');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpi_check_ran_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_pre_order', '_pre_order_date', '_preorder_date', '_rn_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_pre_order', '_pre_order_date', '_preorder_date', '_rn_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_pre_order', '_pre_order_date', '_preorder_date', '_rn_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_pre_order', '_pre_order_date', '_preorder_date', '_rn_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

