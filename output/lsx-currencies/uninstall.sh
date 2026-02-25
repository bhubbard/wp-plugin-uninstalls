#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_lsx-to_settings'
wp option delete '_lsx_settings'
wp option delete '_lsx_lsx-settings'

# Delete Transients
wp transient delete 'lsx_currencies_rates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_type'"
