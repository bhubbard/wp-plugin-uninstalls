#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wwbp_is_enable'
wp option delete 'wwbp_default_weight_unit'
wp option delete 'wwbp_actual_weight_is_enable'
wp option delete 'wwbp_show_total_savings'
wp option delete 'wwbp_actual_weight_label'
wp option delete 'wwbp_add_to_cart_button_label'
wp option delete 'active_sitewide_plugins'
wp option delete 'wwbp_sale_price_label'
wp option delete 'wwbp_custom_input_is_enable'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'measure_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'measure_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'measure_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'measure_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_pricing_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_pricing_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_pricing_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_pricing_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_is_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_is_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_is_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_is_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_min_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_min_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_min_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_min_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_max_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_max_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_max_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_max_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_intervel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_intervel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_intervel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_intervel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_weight_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_weight_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_weight_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_weight_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwbp_wastage_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwbp_wastage_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwbp_wastage_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwbp_wastage_percentage'"
