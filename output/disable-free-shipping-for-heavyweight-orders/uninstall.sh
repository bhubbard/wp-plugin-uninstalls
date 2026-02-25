#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dfsh_bypass_coupons'
wp option delete 'dfsh_bypass_roles'
wp option delete 'dfsh_schedule_enabled'
wp option delete 'dfsh_schedule_start'
wp option delete 'dfsh_schedule_end'
wp option delete 'dfsh_category_thresholds'
wp option delete 'dfsh_enabled'
wp option delete 'dfsh_weight_limit'
wp option delete 'dfsh_subtotal_limit'
wp option delete 'dfsh_item_count_limit'
wp option delete 'dfsh_dimension_limit'
wp option delete 'dfsh_zone_thresholds_array'
wp option delete 'dfsh_class_thresholds_array'
wp option delete 'dfsh_action'
wp option delete 'dfsh_shipping_methods'
wp option delete 'dfsh_frontend_message'
wp option delete 'dfsh_admin_notification'
wp option delete 'dfsh_last_notification_time'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Clear Cron Jobs
wp cron event delete 'dfsh_send_admin_notification_async'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfsh_override_shipping_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfsh_override_shipping_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfsh_override_shipping_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfsh_override_shipping_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfsh_product_weight_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfsh_product_weight_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfsh_product_weight_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfsh_product_weight_limit'"
