-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hurryt_headline_moved_notice_dismissed', 'hurryt_leave_review_dismissed', 'hurryt_settings', 'hurrytimer_version', 'hurrytimer_custom_css', 'hurrytimer_upgraded_2_2_28', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_pay_page_id', 'woocommerce_thanks_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_edit_address_page_id', 'woocommerce_view_order_page_id', 'woocommerce_terms_page_id', 'hurryt_remind_review_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('labels', 'discount_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('labels', 'discount_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('labels', 'discount_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('labels', 'discount_type');

