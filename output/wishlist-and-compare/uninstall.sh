#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'thwwac_%'"
wp option delete 'thwwac_general_settings'
wp option delete 'thwwac_shop_page_settings'
wp option delete 'thwwac_product_page_settings'
wp option delete 'thwwac_wishlist_page_settings'
wp option delete 'thwwac_wishlist_counter_settings'
wp option delete 'thwwac_socialmedia_settings'
wp option delete 'thwwac_compare_settings'
wp option delete 'thwwac_compare_table_settings'
wp option delete 'thwwc_since'
wp option delete 'thwepo_advanced_settings'
wp option delete 'thwepof_advanced_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_cart_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'thwwc_wishlist_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'thwwac_wishlist_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'thwwac_compare_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'thwwc_compare_%'"
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_review_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_review_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_review_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_review_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_review_skipped_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_review_skipped_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_review_skipped_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_review_skipped_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_reviewed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_reviewed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_reviewed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_reviewed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_deactivation_snooze'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwac_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwac_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwac_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwac_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwwc_compare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwwc_compare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwwc_compare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwwc_compare'"
