#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_wordpress_com_hosted'

# Delete Transients
wp transient delete 'facebook_wpcom_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_price'"
