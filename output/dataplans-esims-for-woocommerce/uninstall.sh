#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpio_options'
wp option delete 'current_balance_api_product_purchases'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_api_product_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_api_product_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_api_product_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_api_product_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_api_product_plan_purchase_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_api_product_plan_purchase_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_api_product_plan_purchase_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_api_product_plan_purchase_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flag_selected_api_product_plan_purchase_array_inserted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flag_selected_api_product_plan_purchase_array_inserted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flag_selected_api_product_plan_purchase_array_inserted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flag_selected_api_product_plan_purchase_array_inserted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_api_product_plan_purchase_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_api_product_plan_purchase_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_api_product_plan_purchase_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_api_product_plan_purchase_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_api_product_plan_purchase_qrcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_api_product_plan_purchase_qrcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_api_product_plan_purchase_qrcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_api_product_plan_purchase_qrcode'"
