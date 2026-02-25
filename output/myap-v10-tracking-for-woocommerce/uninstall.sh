#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmyap_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmcartepo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmcartepo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmcartepo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmcartepo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myap_order_affiliate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myap_order_affiliate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myap_order_affiliate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myap_order_affiliate_id'"
