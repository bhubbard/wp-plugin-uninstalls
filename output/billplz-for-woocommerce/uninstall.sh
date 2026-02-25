#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfw_db_version'
wp option delete 'woocommerce_billplz_settings'
wp option delete 'bfw_api_key_state'
wp option delete 'bfw_collection_id_state'
wp option delete 'bfw_payment_order_collection_id_state'
wp option delete 'billplz_fpx_banks'
wp option delete 'billplz_fpx_banks_last'

# Delete Transients
wp transient delete 'bfw_get_payment_gateways'
wp transient delete 'bfw_get_collection_gateways'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bfw_bill_url_%' OR option_name LIKE '_site_transient_bfw_bill_url_%'"
wp transient delete 'bfw_3_21_7_fix'
wp transient delete 'bfw_3_22_0_fix'

# Clear Cron Jobs
wp cron event delete 'bfw_bill_inquiry'
wp cron event delete 'bfw_check_refund_payment_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
