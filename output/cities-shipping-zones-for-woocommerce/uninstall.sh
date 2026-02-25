#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_csz_countries_codes'
wp option delete 'wc_csz_shipping_distance_fee'
wp option delete 'wc_csz_new_state_field'
wp option delete 'wc_csz_populate_state'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_csz_checkout_restrict_states'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state'"
