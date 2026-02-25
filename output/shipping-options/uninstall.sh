#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_shipping_options_number'
wp option delete 'display_shipping'
wp option delete 'product_shipping_cost'
wp option delete 'product_shipping_label'
wp option delete 'general_shipping_settings'
wp option delete 'shipping_options_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping-label%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping-label%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping-label%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping-label%'"
