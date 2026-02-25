#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_wc_zohocrm_modules'
wp option delete 'easy_wc_zohocrm'
wp option delete 'easy_wc_zohocrm_client_id'
wp option delete 'easy_wc_zohocrm_client_secret'
wp option delete 'easy_wc_zohocrm_url'
wp option delete 'easy_wc_zohocrm_customers'
wp option delete 'easy_wc_zohocrm_orders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_wc_zohocrm_%'"
wp option delete 'easy_wc_zohocrm_modules_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_wc_zohocrm_rel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_wc_zohocrm_rel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_wc_zohocrm_rel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_wc_zohocrm_rel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
