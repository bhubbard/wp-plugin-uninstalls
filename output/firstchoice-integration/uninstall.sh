#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'firstchoice'
wp option delete 'first_choice_token'
wp option delete 'modified_after'
wp option delete 'firstchoice_log_message_type'
wp option delete 'firstchoice_log_message'
wp option delete 'products_imported'
wp option delete 'firstchoice_sync_count'
wp option delete 'firstchoice_sync_countt'
wp option delete 'firstchoice_sync_total'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'sync_products_periodically'
wp cron event delete 'sync_all_products'
wp cron event delete 'firstchoice_sync_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lockupcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lockupcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lockupcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lockupcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
