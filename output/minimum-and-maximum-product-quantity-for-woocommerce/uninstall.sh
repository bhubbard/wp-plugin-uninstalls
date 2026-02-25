#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmqwp_option_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmqwp_option_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmqwp_option_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmqwp_option_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmqwp_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmqwp_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmqwp_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmqwp_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmqwp_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmqwp_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmqwp_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmqwp_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmqwp_multi_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmqwp_multi_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmqwp_multi_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmqwp_multi_qty'"
