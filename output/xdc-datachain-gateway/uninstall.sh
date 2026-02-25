#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-rate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_region'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_tutorial_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-order-rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-order-rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-order-rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-order-rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-txId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-txId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-txId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-txId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'recipient_blockchain_address_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'recipient_blockchain_address_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'recipient_blockchain_address_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recipient_blockchain_address_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_last_visited_stores'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_last_visited_stores'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_last_visited_stores'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_last_visited_stores'"
