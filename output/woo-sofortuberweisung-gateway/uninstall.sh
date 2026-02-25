#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gzd_checkout_stop_order_cancellation'
wp option delete 'woocommerce_sofortueberweisung_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sofortTransCounter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sofortTransCounter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sofortTransCounter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sofortTransCounter'"
