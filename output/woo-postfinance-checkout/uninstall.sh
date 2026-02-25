#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'wc_postfinancecheckout_base_gateway_url'
wp option delete 'woocommerce_manage_stock'
wp option delete 'ywpo_order_status'

# Delete Transients
wp transient delete 'wc_postfinancecheckout_payment_methods'

# Clear Cron Jobs
wp cron event delete 'postfinancecheckout_five_minutes_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postfinancecheckout_on_hold_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postfinancecheckout_on_hold_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postfinancecheckout_on_hold_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postfinancecheckout_on_hold_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postfinancecheckout-previous-wc-min-version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postfinancecheckout-previous-wc-min-version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postfinancecheckout-previous-wc-min-version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postfinancecheckout-previous-wc-min-version'"
