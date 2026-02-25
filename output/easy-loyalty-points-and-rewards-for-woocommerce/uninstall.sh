#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nrp_activated'
wp option delete 'nrp_settings_version'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'nrp_rewrite_rules_flushed'
wp option delete 'nrp_points_per_unit'
wp option delete 'nrp_point_value'
wp option delete 'nrp_redemption_increment'
wp option delete 'nrp_assign_points_status'
wp option delete 'nrp_debug'
wp option delete 'nrp_min_redemption_points'
wp option delete 'nrp_db_version'
wp option delete 'nrp_min_redemption_order_value'
wp option delete 'nrp_message_single_product'
wp option delete 'nrp_message_variable_product'
wp option delete 'nrp_message_cart_complete_purchase'
wp option delete 'nrp_message_cart_guest'
wp option delete 'nrp_message_cart_reward_min_spend'
wp option delete 'nrp_message_cart_reward_min_points'
wp option delete 'nrp_message_cart_apply_discount'
wp option delete 'nrp_message_cart_apply_discount_button'
wp option delete 'nrp_tax_mode'
wp option delete 'nrp_earning_ratio'
wp option delete 'nrp_rounding_mode'
wp option delete 'nrp_redemption_ratio'
wp option delete 'nrp_points_label'
wp option delete 'nrp_coupon_calculation_mode'
wp option delete 'nrp_uninstall_delete_settings'
wp option delete 'nrp_uninstall_delete_points_data'
wp option delete 'nrp_install_date'
wp option delete 'nrp_min_redemption_order_value_display'
wp option delete 'nrp_pro_settings_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nrp_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nrp_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nrp_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nrp_points'"
