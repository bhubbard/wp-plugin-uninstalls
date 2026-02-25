#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aodsi_si_what_statuses'
wp option delete 'aodsi_si_email_number'
wp option delete 'aodsi_first_si_number'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aodsi_invoice_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aodsi_invoice_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aodsi_invoice_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aodsi_invoice_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
