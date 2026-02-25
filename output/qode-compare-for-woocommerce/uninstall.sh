#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qode_compare_for_woocommerce_framework_permalinks'
wp option delete 'qode_compare_for_woocommerce_framework_permalinks_updated'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qode_compare_for_woocommerce_user_comparison_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qode_compare_for_woocommerce_user_comparison_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qode_compare_for_woocommerce_user_comparison_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qode_compare_for_woocommerce_user_comparison_items'"
