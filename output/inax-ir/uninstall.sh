#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inax_options'
wp option delete 'inax_payment_gateway'
wp option delete 'inax_do_activation'
wp option delete 'inax_db_version'
wp option delete 'woocommerce_currency'
wp option delete 'inax_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_current_woo_wallet_balance'"
