#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wcmp-cointopay-payments_settings'
wp option delete 'wcmp_payment_settings_name'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cointopay_alt_coin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cointopay_alt_coin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cointopay_alt_coin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cointopay_alt_coin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commissions_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commissions_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commissions_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commissions_processed'"
