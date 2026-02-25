#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lamium_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lamium_merchant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lamium_merchant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lamium_merchant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lamium_merchant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lamium_customer_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lamium_customer_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lamium_customer_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lamium_customer_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lamium_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lamium_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lamium_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lamium_transaction_id'"
