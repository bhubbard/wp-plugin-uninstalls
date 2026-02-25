#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_acima_credit_settings'

# Delete Transients
wp transient delete 'acima_api_access_token'
wp transient delete 'acima_sdk_url_logged'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acima_credit_lease_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acima_credit_lease_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acima_credit_lease_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acima_credit_lease_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acima_credit_checkout_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acima_credit_checkout_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acima_credit_checkout_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acima_credit_checkout_token'"
