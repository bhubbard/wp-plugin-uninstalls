#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payex_checkout_version'

# Delete Transients
wp transient delete 'wc-payex-checkout-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payex_paymentorder_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payex_paymentorder_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payex_paymentorder_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payex_paymentorder_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payex_consumer_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payex_consumer_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payex_consumer_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payex_consumer_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payex_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payex_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payex_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payex_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payex_consumer_address_billing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payex_consumer_address_billing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payex_consumer_address_billing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payex_consumer_address_billing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payex_consumer_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payex_consumer_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payex_consumer_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payex_consumer_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_payex_consumer_address_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_payex_consumer_address_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_payex_consumer_address_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_payex_consumer_address_%'"
