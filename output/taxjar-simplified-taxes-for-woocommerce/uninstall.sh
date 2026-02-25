#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'taxjar_version'
wp option delete 'woocommerce_taxjar-integration_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_db_version'

# Delete Transients
wp transient delete 'taxjar_installing'
wp transient delete 'tj_nexus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_exemption_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_exemption_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_exemption_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_exemption_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_exempt_regions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_exempt_regions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_exempt_regions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_exempt_regions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxjar_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxjar_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxjar_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxjar_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxjar_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxjar_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxjar_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxjar_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_api_key_permissions'"
