#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's123-invoices'
wp option delete 'woocommerce_price_num_decimals'

# Clear Cron Jobs
wp cron event delete 'i123_sync_warehouse_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_i123_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_i123_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_i123_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_i123_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_i123_invoice_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_i123_invoice_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_i123_invoice_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_i123_invoice_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
