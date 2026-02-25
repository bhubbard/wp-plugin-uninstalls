#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpp_authenticated_routes'
wp option delete 'wpp_payments_connect_notice'
wp option delete 'wpp_stripe_version'
wp option delete 'woocommerce_wpp_email_receipt'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_lock_order_%' OR option_name LIKE '_site_transient_stripe_lock_order_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpp_payment_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpp_payment_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpp_payment_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpp_payment_mode'"
