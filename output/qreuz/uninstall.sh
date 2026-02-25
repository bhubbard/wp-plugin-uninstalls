#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qreuz_db_version'
wp option delete 'qreuz_user_data_auth_status'
wp option delete 'qreuz_smart_pricing_premium_category'
wp option delete 'qreuz_smart_pricing_premium_percent'
wp option delete 'qreuz_smart_pricing_sale_category'
wp option delete 'qreuz_smart_pricing_sale_percent'
wp option delete 'qreuz_smart_pricing_price_scheme'
wp option delete 'qreuz_tracking_method'
wp option delete 'qreuz_user_data_toqen'
wp option delete 'qreuz_user_data_qkey'
wp option delete 'qreuz_user_data_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qreuz_track_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qreuz_track_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qreuz_track_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qreuz_track_woocommerce_thankyou_done'"
