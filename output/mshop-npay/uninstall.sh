#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mshop-naverpay-status'
wp option delete 'mshop-naverpay-except-category'
wp option delete 'mnp-force-image-url-to-http'
wp option delete 'mnp_zipcode'
wp option delete 'mnp_address1'
wp option delete 'mnp_address2'
wp option delete 'mnp_sellername'
wp option delete 'mnp_contact1'
wp option delete 'mnp_contact2'
wp option delete 'mnp-npay-script'
wp option delete 'mnp-cart-page-transition-mode'
wp option delete 'mnp-wrapper-selector'
wp option delete 'mnp-simple-class'
wp option delete 'mnp-variable-class'
wp option delete 'mnp-grouped-class'
wp option delete 'mnp-product-page-transition-mode'
wp option delete 'mnp-use-submit-handler'
wp option delete 'mnp-use-cart-management'
wp option delete 'mnp-concat-review-title'
wp option delete 'mnp_facebook_app_id'
wp option delete 'mnp_facebook_app_secret'
wp option delete 'mnp_facebook_access_token'
wp option delete 'mnp_facebook_pixel_id'
wp option delete 'mnp_facebook_test_event'
wp option delete 'mnp_facebook_test_event_code'
wp option delete 'mnp_use_facebook_pixel'
wp option delete 'mnp-enable-logger'
wp option delete 'mshop-naverpay-operation-mode'
wp option delete 'mshop-naverpay-api-key'
wp option delete 'mshop-naverpay-merchant-id'
wp option delete 'mshop-naverpay-auth-key'
wp option delete 'mshop-naverpay-button-auth-key'
wp option delete 'mshop-naverpay-common-auth-key'
wp option delete 'mshop-naverpay-test-user-id'
wp option delete 'mshop-naverpay-button-type-pc'
wp option delete 'mshop-naverpay-button-type-mobile'
wp option delete 'mshop-naverpay-button-color-pc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mshop-naverpay-button-count-%'"
wp option delete 'mshop-naverpay-sync-review'
wp option delete 'mshop-naverpay-sync-normal-review'
wp option delete 'mshop-naverpay-sync-premium-review'
wp option delete 'mnp-use-wcs'
wp option delete 'mshop-naverpay-use-additional-fee'
wp option delete 'mshop-naverpay-additional-fee-mode'
wp option delete 'mshop-naverpay-additional-fee-region'
wp option delete 'mshop-naverpay-additional-fee-region-2'
wp option delete 'mshop-naverpay-additional-fee-region-3'
wp option delete 'mnp-use-partial-refunded-order-status'
wp option delete 'mnp-save-billing-address'
wp option delete 'mnp-save-shipping-info'
wp option delete 'mshop-naverpay-shipping-fee-type'
wp option delete 'mshop-naverpay-shipping-minimum-amount'
wp option delete 'mshop-naverpay-shipping-flat-rate-amount'
wp option delete 'mnp_sheet_payment_type'
wp option delete 'mnp_order_status_after_shipping'
wp option delete 'mnp_sheet_fields'
wp option delete 'mnp_sheet_order_field_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mshop-naverpay-%'"
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'mshop-naverpay-button-product'
wp option delete 'mshop-naverpay-button-cart'
wp option delete 'mnp-enable-earn-point'
wp option delete 'mnp-enable-earn-recommender-point'
wp option delete 'mnp-block-sms'
wp option delete 'mnp-culture-benefit'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mnp_%' OR option_name LIKE '_site_transient_mnp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mnp_coupons_%' OR option_name LIKE '_site_transient_mnp_coupons_%'"

# Clear Cron Jobs
wp cron event delete 'naverpay_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'naverpay_purchase_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'naverpay_purchase_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'naverpay_purchase_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'naverpay_purchase_review_id'"
