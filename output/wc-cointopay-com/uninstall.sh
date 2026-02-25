#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cointopay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cointopay_crypto_alt_coin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cointopay_crypto_alt_coin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cointopay_crypto_alt_coin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cointopay_crypto_alt_coin'"
