#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ame-digital_settings'
wp option delete 'welcome_learn_more'

# Clear Cron Jobs
wp cron event delete 'pqad_ame_delete_qrcode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wad_api_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wad_api_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wad_api_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wad_api_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wad_captured_order_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wad_captured_order_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wad_captured_order_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wad_captured_order_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wad_captured_order_nsu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wad_captured_order_nsu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wad_captured_order_nsu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wad_captured_order_nsu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wad_api_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wad_api_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wad_api_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wad_api_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ame_digital_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ame_digital_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ame_digital_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ame_digital_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wad_api_order_cashbackamount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wad_api_order_cashbackamount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wad_api_order_cashbackamount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wad_api_order_cashbackamount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_neighborhood'"
