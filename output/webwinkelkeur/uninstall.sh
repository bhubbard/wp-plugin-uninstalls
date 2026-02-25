#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_order_received_endpoint'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_global_identifier_values'"
