#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'via_woocommerce_classement_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'via_woocommerce_classement_Statistics_start_year'

# Delete Transients
wp transient delete 'online_status'

# Clear Cron Jobs
wp cron event delete 'wooclassementfree_check_activation_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_count_connections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_count_connections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_count_connections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_count_connections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocl268_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocl268_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocl268_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocl268_notice'"
