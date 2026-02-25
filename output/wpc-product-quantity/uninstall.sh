#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woopq_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woopq_%'"
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woopq_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woopq_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woopq_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woopq_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_values'"
