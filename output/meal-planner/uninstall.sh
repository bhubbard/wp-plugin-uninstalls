#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mbj_auth_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mng_custom_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mng_custom_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mng_custom_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mng_custom_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_id'"
