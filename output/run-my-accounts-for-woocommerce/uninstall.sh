#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_rma_settings'
wp option delete 'wc_rma_settings_accounting'
wp option delete 'wc_rma_version'
wp option delete 'wc_rma_db_version'
wp option delete 'wc_rma_settings_collective_invoice'

# Delete Transients
wp transient delete 'rma-wc-page-activated'

# Clear Cron Jobs
wp cron event delete 'run_my_accounts_collective_invoice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rma_billing_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rma_billing_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rma_billing_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rma_billing_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rma_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rma_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rma_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rma_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rma_payment_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rma_payment_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rma_payment_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rma_payment_period'"
