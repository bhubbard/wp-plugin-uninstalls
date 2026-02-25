#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_block_bfx_pay_gateway_settings'

# Clear Cron Jobs
wp cron event delete 'bfx_pay_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitfinex_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitfinex_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitfinex_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitfinex_invoice_id'"
