#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payzah_settings'
wp option delete 'woocommerce_enable_receipt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payzah_refund_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payzah_refund_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payzah_refund_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payzah_refund_response'"
