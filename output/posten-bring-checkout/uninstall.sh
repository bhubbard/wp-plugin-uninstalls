#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'posten-bring-checkout-dark-mode'
wp option delete 'woocommerce_vipps_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'posten-bring-checkout-deactivation-reason'
wp option delete 'posten-bring-checkout-deactivation-feedback'
wp option delete 'posten-bring-checkout-remote-log'
wp option delete 'wooexpress_navigation_enabled'
wp option delete 'posten-bring-checkout-apikey'
wp option delete 'posten-bring-checkout-webshopId'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_address_autocomplete_enabled'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_dintero_checkout_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posten_bring_checkout_too_large_for_parcel_locker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posten_bring_checkout_too_large_for_parcel_locker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posten_bring_checkout_too_large_for_parcel_locker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posten_bring_checkout_too_large_for_parcel_locker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posten_bring_checkout_too_large_for_mailbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posten_bring_checkout_too_large_for_mailbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posten_bring_checkout_too_large_for_mailbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posten_bring_checkout_too_large_for_mailbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posten_bring_checkout_disable_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posten_bring_checkout_disable_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posten_bring_checkout_disable_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posten_bring_checkout_disable_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posten_bring_checkout_dismissed_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posten_bring_checkout_dismissed_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posten_bring_checkout_dismissed_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posten_bring_checkout_dismissed_notifications'"
