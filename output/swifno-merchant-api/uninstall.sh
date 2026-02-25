#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swifno_opts'
wp option delete 'swifno_key'
wp option delete 'swifno_secret_key'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
