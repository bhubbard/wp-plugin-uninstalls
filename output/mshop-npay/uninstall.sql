-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mshop-naverpay-status', 'mshop-naverpay-except-category', 'mnp-force-image-url-to-http', 'mnp_zipcode', 'mnp_address1', 'mnp_address2', 'mnp_sellername', 'mnp_contact1', 'mnp_contact2', 'mnp-npay-script', 'mnp-cart-page-transition-mode', 'mnp-wrapper-selector', 'mnp-simple-class', 'mnp-variable-class', 'mnp-grouped-class', 'mnp-product-page-transition-mode', 'mnp-use-submit-handler', 'mnp-use-cart-management', 'mnp-concat-review-title', 'mnp_facebook_app_id', 'mnp_facebook_app_secret', 'mnp_facebook_access_token', 'mnp_facebook_pixel_id', 'mnp_facebook_test_event', 'mnp_facebook_test_event_code', 'mnp_use_facebook_pixel', 'mnp-enable-logger', 'mshop-naverpay-operation-mode', 'mshop-naverpay-api-key', 'mshop-naverpay-merchant-id', 'mshop-naverpay-auth-key', 'mshop-naverpay-button-auth-key', 'mshop-naverpay-common-auth-key', 'mshop-naverpay-test-user-id', 'mshop-naverpay-button-type-pc', 'mshop-naverpay-button-type-mobile', 'mshop-naverpay-button-color-pc', 'mshop-naverpay-sync-review', 'mshop-naverpay-sync-normal-review', 'mshop-naverpay-sync-premium-review', 'mnp-use-wcs', 'mshop-naverpay-use-additional-fee', 'mshop-naverpay-additional-fee-mode', 'mshop-naverpay-additional-fee-region', 'mshop-naverpay-additional-fee-region-2', 'mshop-naverpay-additional-fee-region-3', 'mnp-use-partial-refunded-order-status', 'mnp-save-billing-address', 'mnp-save-shipping-info', 'mshop-naverpay-shipping-fee-type');
DELETE FROM wp_options WHERE option_name IN ('mshop-naverpay-shipping-minimum-amount', 'mshop-naverpay-shipping-flat-rate-amount', 'mnp_sheet_payment_type', 'mnp_order_status_after_shipping', 'mnp_sheet_fields', 'mnp_sheet_order_field_type', 'woocommerce_ship_to_countries', 'mshop-naverpay-button-product', 'mshop-naverpay-button-cart', 'mnp-enable-earn-point', 'mnp-enable-earn-recommender-point', 'mnp-block-sms', 'mnp-culture-benefit');
DELETE FROM wp_options WHERE option_name LIKE 'mshop-naverpay-button-count-%';
DELETE FROM wp_options WHERE option_name LIKE 'mshop-naverpay-%';
DELETE FROM wp_options WHERE option_name LIKE 'mnp_%';
DELETE FROM wp_options WHERE option_name LIKE 'mnp_coupons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'naverpay_purchase_review_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'naverpay_purchase_review_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'naverpay_purchase_review_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'naverpay_purchase_review_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

