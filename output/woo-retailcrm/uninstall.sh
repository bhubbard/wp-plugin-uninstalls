#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'retailcrm_integration_payments'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'retailcrm_active_in_crm'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'retailcrm_client_id'
wp option delete 'retailcrm_customers_history_since_id'
wp option delete 'retailcrm_orders_history_since_id'
wp option delete 'woocommerce_shipping_tax_class'

# Clear Cron Jobs
wp cron event delete 'retailcrm_inventories'
wp cron event delete 'retailcrm_history'
wp cron event delete 'retailcrm_icml'
wp cron event delete 'retailcrm_loyalty_upload_price'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
