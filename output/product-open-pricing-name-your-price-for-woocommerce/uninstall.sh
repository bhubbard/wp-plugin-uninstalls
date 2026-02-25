#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_product_open_pricing_enabled'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_product_open_pricing_disable_qty'
wp option delete 'alg_wc_product_open_pricing_field_position'
wp option delete 'alg_wc_product_open_pricing_field_position_priority'
wp option delete 'alg_wc_product_open_pricing_field_on_loop'
wp option delete 'alg_wc_product_open_pricing_field_loop_position'
wp option delete 'alg_wc_product_open_pricing_field_loop_position_priority'
wp option delete 'alg_wc_product_open_pricing_fix_mini_cart'
wp option delete 'alg_wc_product_open_pricing_add_admin_column'
wp option delete 'alg_wc_product_open_pricing_force_decimal_width_enabled'
wp option delete 'alg_wc_product_open_pricing_force_decimal_width'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_currency'
wp option delete 'wpw_pop_add_to_cart_text'
wp option delete 'alg_wc_product_open_pricing_hide_price'
wp option delete 'alg_wc_product_open_pricing_loop_hide_price'
wp option delete 'alg_wc_product_open_pricing_messages_required'
wp option delete 'alg_wc_product_open_pricing_messages_too_small'
wp option delete 'alg_wc_product_open_pricing_messages_too_big'
wp option delete 'alg_wc_product_open_pricing_price_step'
wp option delete 'alg_wc_product_open_pricing_input_style'
wp option delete 'alg_wc_product_open_pricing_input_pattern'
wp option delete 'alg_wc_product_open_pricing_frontend_template'
wp option delete 'alg_wc_product_open_pricing_frontend_loop_template'
wp option delete 'alg_wc_product_open_pricing_label_frontend'
wp option delete 'alg_wc_product_open_pricing_enable_step'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_product_open_pricing_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
