#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcash_otp_sent'
wp option delete 'otp_verified'
wp option delete 'bykea_cash_ipn_registered'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_number'"
