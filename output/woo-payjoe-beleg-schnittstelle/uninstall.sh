#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payjoe_zugangsid'
wp option delete 'payjoe_username'
wp option delete 'payjoe_apikey'
wp option delete 'payjoe_log'
wp option delete 'payjoe_interval'
wp option delete 'payjoe_startrenr'
wp option delete 'payjoe_invoice_options'
wp option delete 'payjoe_transfer_count'
wp option delete 'payjoe_start_order_date'
wp option delete 'wp_wc_running_invoice_number_prefix'
wp option delete 'wp_wc_running_invoice_number_suffix'
wp option delete 'wp_wc_running_invoice_number_prefix_refund'
wp option delete 'wp_wc_running_invoice_number_suffix_refund'

# Clear Cron Jobs
wp cron event delete 'weslink-payjoe-opbeleg-create-cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_invoice_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_invoice_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_invoice_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_invoice_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_invoices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_invoices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_invoices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_invoices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_wc_running_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_wc_running_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_wc_running_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_wc_running_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_wc_running_invoice_number_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_wc_running_invoice_number_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_wc_running_invoice_number_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_wc_running_invoice_number_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payjoe_invoice_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payjoe_invoice_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payjoe_invoice_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payjoe_invoice_string'"
