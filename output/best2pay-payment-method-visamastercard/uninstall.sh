#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_best2pay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best2pay_order_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best2pay_order_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best2pay_order_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best2pay_order_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best2pay_order_fb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best2pay_order_fb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best2pay_order_fb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best2pay_order_fb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best2pay_order_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best2pay_order_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best2pay_order_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best2pay_order_moderated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best2pay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best2pay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best2pay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best2pay_order_id'"
