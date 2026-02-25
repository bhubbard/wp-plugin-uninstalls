#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aofw_apply_on'
wp option delete 'aofw_product_selection_mode'
wp option delete 'aofw_selected_categories'
wp option delete 'aofw_selected_tags'
wp option delete 'woocommerce_pre_order_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aofw_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aofw_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aofw_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aofw_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aofw_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aofw_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aofw_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aofw_disabled'"
