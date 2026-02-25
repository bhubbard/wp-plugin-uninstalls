#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zc_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zc_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zc_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zc_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zc_payment_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zc_payment_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zc_payment_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zc_payment_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zc_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zc_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zc_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zc_transaction_id'"
