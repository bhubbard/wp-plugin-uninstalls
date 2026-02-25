#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_add_to_cart_button_labels_enabled'
wp option delete 'alg_wc_add_to_cart_button_labels_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_add_to_cart_button_labels_all_products_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_add_to_cart_per_category_enabled_group_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_add_to_cart_per_category_ids_group_%'"
wp option delete 'alg_wc_atcbl_per_tag_group_enabled'
wp option delete 'alg_wc_atcbl_per_tag_group_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_atcbl_per_tag_group_label_%'"
wp option delete 'alg_wc_atcbl_per_user_role_group_enabled'
wp option delete 'alg_wc_atcbl_per_user_role_group_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_atcbl_per_user_role_group_label_%'"
wp option delete 'alg_wc_atcbl_per_user_group_enabled'
wp option delete 'alg_wc_atcbl_per_user_group_users'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_atcbl_per_user_group_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
