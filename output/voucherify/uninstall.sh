#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voucherify_app_id'
wp option delete 'voucherify_app_secret_key'
wp option delete 'voucherify_enabled'
wp option delete 'voucherify_rollback_enabled'
wp option delete 'voucherify_lock_ttl'
wp option delete 'voucherify_lock_ttl_unit'
wp option delete 'voucherify_wc_subs_apply_on_renewals'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'voucherify_api_endpoint'
wp option delete 'vcrf_resynchronize'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
