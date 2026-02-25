-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thmaf_since', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thmaf_review_skipped', 'thmaf_review_skipped_time', 'thmaf_review_dismissed', 'thmaf_review_dismissed_time', 'thmaf_reviewed', 'thmaf_reviewed_time', 'thmaf_review_dismissed_', 'thmaf_deactivation_snooze', 'shipping_country', 'thwma_custom_address', '_woocommerce_load_saved_cart_after_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('thmaf_review_skipped', 'thmaf_review_skipped_time', 'thmaf_review_dismissed', 'thmaf_review_dismissed_time', 'thmaf_reviewed', 'thmaf_reviewed_time', 'thmaf_review_dismissed_', 'thmaf_deactivation_snooze', 'shipping_country', 'thwma_custom_address', '_woocommerce_load_saved_cart_after_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('thmaf_review_skipped', 'thmaf_review_skipped_time', 'thmaf_review_dismissed', 'thmaf_review_dismissed_time', 'thmaf_reviewed', 'thmaf_reviewed_time', 'thmaf_review_dismissed_', 'thmaf_deactivation_snooze', 'shipping_country', 'thwma_custom_address', '_woocommerce_load_saved_cart_after_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thmaf_review_skipped', 'thmaf_review_skipped_time', 'thmaf_review_dismissed', 'thmaf_review_dismissed_time', 'thmaf_reviewed', 'thmaf_reviewed_time', 'thmaf_review_dismissed_', 'thmaf_deactivation_snooze', 'shipping_country', 'thwma_custom_address', '_woocommerce_load_saved_cart_after_login');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

