#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payhere_settings'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'payhere_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payhere_customer_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payhere_customer_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payhere_customer_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payhere_customer_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payhere_customer_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payhere_customer_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payhere_customer_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payhere_customer_data'"
