#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_order_number_prefix'
wp option delete 'woocommerce_order_number_suffix'
wp option delete 'adv_timestamp'
wp option delete 'show_coupon_shipAdv'
wp option delete 'show_private_message_shipAdv'
wp option delete 'show_customer_message_shipAdv'
wp option delete 'show_variationId_shipAdv'
wp option delete 'show_SKU_shipAdv'
wp option delete 'download_virtualProd_shipAdv'
wp option delete 'woocommerce_api_shipAdv'
wp option delete 'admin_notes_restriction_shipAdv'
wp option delete 'aftership_option_name'
wp option delete 'adv_username'
wp option delete 'adv_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcms_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcms_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcms_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcms_packages'"
