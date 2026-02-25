#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipint_return_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ipint_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ipint_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ipint_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ipint_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipint_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipint_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipint_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipint_invoice_id'"
