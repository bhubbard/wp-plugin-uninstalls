#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_subscription_epayco_settings'
wp option delete 'subscription_epayco_se_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'id_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'id_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'id_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'id_client'"
