#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsp_remove_data'
wp option delete 'wpsp-lcode'
wp option delete 'plugin_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pay_woocommerce_enrolled_class_access_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pay_woocommerce_enrolled_class_access_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pay_woocommerce_enrolled_class_access_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pay_woocommerce_enrolled_class_access_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'displaypicture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'displaypicture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'displaypicture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'displaypicture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'p_displaypicture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'p_displaypicture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'p_displaypicture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'p_displaypicture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
