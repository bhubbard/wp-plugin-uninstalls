#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_pay_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_razorpay_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_razorpay_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_razorpay_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_razorpay_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission_id'"
