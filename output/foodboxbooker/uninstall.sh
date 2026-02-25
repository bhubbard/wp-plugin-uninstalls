#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbbttm_fbbttm-shop_page_id'
wp option delete 'fbbttm_fbbttm-cart_page_id'
wp option delete 'fbbttm_fbbttm-checkout_page_id'
wp option delete 'fbbttm_fbbttm-myaccount_page_id'
wp option delete 'fbbttm_fbbttm-order-received_page_id'
wp option delete 'fbbttm_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fbbttmprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fbbttmprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fbbttmprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fbbttmprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themetechmount_fooditems_list_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themetechmount_fooditems_list_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themetechmount_fooditems_list_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themetechmount_fooditems_list_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data'"
