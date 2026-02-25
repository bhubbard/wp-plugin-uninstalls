#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_speed_payment_gateway_settings'

# Delete Transients
wp transient delete 'redirect_post_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sabp_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sabp_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sabp_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sabp_order_id'"
