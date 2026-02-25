#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fetch-shop-btn-show-always'
wp option delete 'shopstyle-api-key'
wp option delete 'fetch-account'
wp option delete 'fetch-position-vertical'
wp option delete 'fetch-position-horizontal'
wp option delete 'fetch-show-home-feed'
wp option delete 'fetch-paypal-email'
wp option delete 'frenzy-username'
wp option delete 'fetch-paypal-settings-status'
wp option delete 'fetch-paypal-payout-status'
wp option delete 'fetch-payouts'
wp option delete 'frenzy-settings-status'
wp option delete 'fetch-check-payout-status'

# Delete Transients
wp transient delete 'indi-commissions'
wp transient delete 'fetch-indi-commissions-details'
wp transient delete 'fetch-indi-payouts'
wp transient delete 'fetch-indi-commissions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fetch_in_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fetch_in_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fetch_in_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fetch_in_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frenzy-duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frenzy-duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frenzy-duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frenzy-duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frenzy-response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frenzy-response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frenzy-response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frenzy-response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fetch_show_shop_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fetch_show_shop_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fetch_show_shop_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fetch_show_shop_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fetch_post_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fetch_post_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fetch_post_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fetch_post_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fetch_product_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fetch_product_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fetch_product_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fetch_product_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_manual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_manual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_manual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_manual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frenzy-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frenzy-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frenzy-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frenzy-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frenzy-deleted-products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frenzy-deleted-products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frenzy-deleted-products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frenzy-deleted-products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frenzy-shopstyle-added-products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frenzy-shopstyle-added-products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frenzy-shopstyle-added-products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frenzy-shopstyle-added-products'"
