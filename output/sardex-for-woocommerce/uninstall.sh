#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_sardex_b2b_payment_enabled'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'wc_sardex_username'
wp option delete 'wc_sardex_password'
wp option delete 'wc_sardex_sandbox_enabled'
wp option delete 'wc_sardex_bisoo_payment_enabled'
wp option delete 'wc_sardex_bisoo_recharge_enabled'

# Delete Transients
wp transient delete 'transient-sardex-bisoo-recharge-error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sardex_ticket_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sardex_ticket_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sardex_ticket_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sardex_ticket_number'"
