#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viabill_secret'
wp option delete 'viabill_key'
wp option delete 'viabill_pricetag'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'viabill_db_update'
wp option delete 'woocommerce_viabill_try_settings'
wp option delete 'woocommerce_viabill_settings'
wp option delete 'viabill_gateway_disabled'
wp option delete 'viabill_activation_redirect'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'viabill_decimals'

# Delete Transients
wp transient delete 'my_viabill_token_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_viabil_updating_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_viabil_updating_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_viabil_updating_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_viabil_updating_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_viabil_updated_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_viabil_updated_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_viabil_updated_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_viabil_updated_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_viabill_decimals_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_viabill_decimals_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_viabill_decimals_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_viabill_decimals_notice'"
