#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kiwiz_invoice_list_settings'
wp option delete 'kiwiz_refund_list_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'kiwiz_api_token'
wp option delete 'kiwiz_activation_date'
wp option delete 'kiwiz_update_increment_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cron_list'"
wp option delete 'woocommerce_calc_taxes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_certify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_certify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_certify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_certify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kiwiz_invoice_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kiwiz_invoice_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kiwiz_invoice_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kiwiz_invoice_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kiwiz_refund_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kiwiz_refund_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kiwiz_refund_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kiwiz_refund_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_block_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_block_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_block_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_block_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_certification_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_certification_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_certification_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_certification_date'"
