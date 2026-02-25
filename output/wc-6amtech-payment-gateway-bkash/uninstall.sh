#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pgbw_bkash_payment_create_response_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pgbw_bkash_payment_execute_response_%'"
wp option delete 'pgbw_bkash_token_data'
wp option delete 'pgbw_error_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pgbw_bdt_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pgbw_bdt_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pgbw_bdt_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pgbw_bdt_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pgbw_bdt_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pgbw_bdt_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pgbw_bdt_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pgbw_bdt_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bkash_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bkash_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bkash_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bkash_payment_id'"
