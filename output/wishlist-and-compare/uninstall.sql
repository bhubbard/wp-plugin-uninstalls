-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwwac_general_settings', 'thwwac_shop_page_settings', 'thwwac_product_page_settings', 'thwwac_wishlist_page_settings', 'thwwac_wishlist_counter_settings', 'thwwac_socialmedia_settings', 'thwwac_compare_settings', 'thwwac_compare_table_settings', 'thwwc_since', 'thwepo_advanced_settings', 'thwepof_advanced_settings', 'woocommerce_weight_unit', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'thwwac_%';
DELETE FROM wp_options WHERE option_name LIKE 'thwwc_wishlist_%';
DELETE FROM wp_options WHERE option_name LIKE 'thwwac_wishlist_%';
DELETE FROM wp_options WHERE option_name LIKE 'thwwac_compare_%';
DELETE FROM wp_options WHERE option_name LIKE 'thwwc_compare_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thwwc_review_skipped', 'thwwc_review_skipped_time', 'thwwc_review_dismissed', 'thwwc_review_dismissed_time', 'thwwc_reviewed', 'thwwc_reviewed_time', 'thwwc_deactivation_snooze', 'thwwc_wishlist', 'thwwac_key', 'thwwc_compare');
DELETE FROM wp_usermeta WHERE meta_key IN ('thwwc_review_skipped', 'thwwc_review_skipped_time', 'thwwc_review_dismissed', 'thwwc_review_dismissed_time', 'thwwc_reviewed', 'thwwc_reviewed_time', 'thwwc_deactivation_snooze', 'thwwc_wishlist', 'thwwac_key', 'thwwc_compare');
DELETE FROM wp_termmeta WHERE meta_key IN ('thwwc_review_skipped', 'thwwc_review_skipped_time', 'thwwc_review_dismissed', 'thwwc_review_dismissed_time', 'thwwc_reviewed', 'thwwc_reviewed_time', 'thwwc_deactivation_snooze', 'thwwc_wishlist', 'thwwac_key', 'thwwc_compare');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thwwc_review_skipped', 'thwwc_review_skipped_time', 'thwwc_review_dismissed', 'thwwc_review_dismissed_time', 'thwwc_reviewed', 'thwwc_reviewed_time', 'thwwc_deactivation_snooze', 'thwwc_wishlist', 'thwwac_key', 'thwwc_compare');

