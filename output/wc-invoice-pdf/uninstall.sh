#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'cron'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_bacs_accounts'

# Clear Cron Jobs
wp cron event delete 'invoice_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ispconfig_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ispconfig_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ispconfig_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ispconfig_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pdf_b2c'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pdf_b2c'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pdf_b2c'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pdf_b2c'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qty_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qty_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qty_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qty_suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qty_suffix_plural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qty_suffix_plural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qty_suffix_plural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qty_suffix_plural'"
