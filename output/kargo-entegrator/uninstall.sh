#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'gcargo_db_version'
wp option delete 'gcargo_sync_last_update'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'gcargo_auto_shipment'
wp cron event delete 'gcargo_migrate_shipment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcargo_seller_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcargo_seller_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcargo_seller_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcargo_seller_id'"
