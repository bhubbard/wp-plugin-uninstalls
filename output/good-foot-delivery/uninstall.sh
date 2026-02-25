#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_goodfootdelivery_debug_mode'
wp option delete 'wc_goodfootdelivery_api_username'
wp option delete 'wc_goodfootdelivery_api_email'
wp option delete 'wc_goodfootdelivery_api_user_id'
wp option delete 'wc_goodfootdelivery_environment'
wp option delete 'wc_goodfootdelivery_auto_complete_shipped_orders'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipwire_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipwire_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipwire_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipwire_manage_stock'"
