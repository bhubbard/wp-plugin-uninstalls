#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pricepress_allow_tracking'

# Delete Transients
wp transient delete 'pricepress_tracking_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricepress_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricepress_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricepress_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricepress_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricepress_tiers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricepress_tiers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricepress_tiers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricepress_tiers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricepress_show_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricepress_show_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricepress_show_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricepress_show_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricepress_shipping_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricepress_shipping_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricepress_shipping_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricepress_shipping_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricepress_shipping_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricepress_shipping_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricepress_shipping_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricepress_shipping_qty'"
