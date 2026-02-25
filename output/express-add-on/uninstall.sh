#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vxn_wa_form_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vxn_express_order_via_shopee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vxn_express_order_via_shopee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vxn_express_order_via_shopee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vxn_express_order_via_shopee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vxn_express_order_via_tokopedia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vxn_express_order_via_tokopedia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vxn_express_order_via_tokopedia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vxn_express_order_via_tokopedia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vxn_express_order_via_bukalapak'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vxn_express_order_via_bukalapak'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vxn_express_order_via_bukalapak'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vxn_express_order_via_bukalapak'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
