#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ledyer_payments_settings'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'

# Delete Transients
wp transient delete 'ledyer_payments_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
