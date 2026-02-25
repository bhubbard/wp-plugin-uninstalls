#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_woo_discount_rules_load_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_currency'
wp option delete '_awdr_review'
wp option delete 'advanced_woo_discount_rules_current_version'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'icl_sitepress_settings'
wp option delete 'woo-discount-config'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'awdr_priority_reset'
wp option delete 'awdr_activity_log_version'

# Delete Transients
wp transient delete 'awdr_addons_list'
wp transient delete 'wdr_recommendations_list'
wp transient delete 'awdr_sale_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awdr_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awdr_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awdr_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awdr_filters'"
