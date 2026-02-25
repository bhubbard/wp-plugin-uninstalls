#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_orkesta_settings'
wp option delete 'woocommerce_orkestapay-card_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_orkestapay_card_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orkestapay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orkestapay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orkestapay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orkestapay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_affiliate_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_affiliate_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_affiliate_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_affiliate_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
