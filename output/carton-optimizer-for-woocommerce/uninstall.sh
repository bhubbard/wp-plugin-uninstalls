#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xelti_co_ui_language'
wp option delete 'xelti_co_max_points_per_carton'
wp option delete 'xelti_co_buffer_points'
wp option delete 'xelti_co_buffer_mode'
wp option delete 'xelti_co_carton_width'
wp option delete 'xelti_co_carton_height'
wp option delete 'xelti_co_carton_depth'
wp option delete 'xelti_co_extra_carton_cost'
wp option delete 'xelti_co_method_extra_carton_costs'
wp option delete 'xelti_co_enabled_shipping_methods'
wp option delete 'xelti_co_product_info_enabled'
wp option delete 'xelti_co_free_shipping_threshold'
wp option delete 'xelti_co_bar_color_product'
wp option delete 'xelti_co_bar_color_product_free'
wp option delete 'xelti_co_bar_color_buffer'
wp option delete 'xelti_co_bar_color_background'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xelti_co_require_buffer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xelti_co_require_buffer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xelti_co_require_buffer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xelti_co_require_buffer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xelti_co_carton_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xelti_co_carton_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xelti_co_carton_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xelti_co_carton_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xelti_co_composition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xelti_co_composition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xelti_co_composition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xelti_co_composition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xelti_co_gpsr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xelti_co_gpsr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xelti_co_gpsr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xelti_co_gpsr'"
