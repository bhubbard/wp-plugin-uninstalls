#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_placeholder_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency_conversion_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency_conversion_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency_conversion_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency_conversion_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total_converted'"
