#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payplug_settings'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'payplug_code_verifier'
wp transient delete 'payplug_oauth_callback_uri'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payplug_addresses_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payplug_addresses_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payplug_addresses_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payplug_addresses_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payplug_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payplug_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payplug_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payplug_metadata'"
