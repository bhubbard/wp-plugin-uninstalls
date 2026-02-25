#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'llms_gateway_exprtzin_bitpay_%'"
wp option delete 'bitpay_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitpay_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitpay_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitpay_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitpay_invoice_id'"
