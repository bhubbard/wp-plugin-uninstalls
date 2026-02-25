#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpler_auto_render_product_button'
wp option delete 'simplerwc_product_button_placement'
wp option delete 'simpler_auto_render_cart_button'
wp option delete 'simplerwc_cart_page_button_placement'
wp option delete 'simplerwc_auto_render_checkout_page_button'
wp option delete 'simplerwc_checkout_page_button_placement'
wp option delete 'simplerwc_auto_render_minicart_button'
wp option delete 'simplerwc_minicart_button_placement'
wp option delete 'simplerwc_show_cards_notice'
wp option delete 'simplerwc_excluded_user_roles'
wp option delete 'simpler_environment'
wp option delete 'simpler_api_key'
wp option delete 'simpler_api_secret'
wp option delete 'simpler_checkout_test_mode'
wp option delete 'simplerwc_support_woo_order_attribution'
wp option delete 'simplerwc_disable_force_login'
wp option delete 'simplerwc_should_render_sale_ribbon'
wp option delete 'simplerwc_sale_ribbon_text'
wp option delete 'simplerwc_takeover_enable'
wp option delete 'simplerwc_takeover_test_mode'
wp option delete 'simplerwc_takeover_redirect_only'
wp option delete 'tgpc_gift_wrapper_enabled'
wp option delete 'tgpc_gift_wrapper_cost'
wp option delete 'tgpc_gift_wrapper_cost_tax_status'
wp option delete 'tgpc_gift_wrapper_tax_class'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'simpler_product_button_custom_style'
wp option delete 'simpler_mini_cart_button_custom_style'
wp option delete 'simpler_cart_page_button_custom_style'
wp option delete 'simpler_checkout_page_button_custom_style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woobt_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woobt_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woobt_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woobt_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bundle_sells'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bundle_sells'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bundle_sells'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bundle_sells'"
