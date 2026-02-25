#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_shipping_field_phone'
wp option delete 'woocommerce_enable_shipping_field_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
