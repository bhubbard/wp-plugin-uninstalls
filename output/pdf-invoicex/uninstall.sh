#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdfinvx_settings'
wp option delete 'pdfinvx_flush_rewrite_rules'
wp option delete 'pdfinvx_last_invoice_number'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfinvx_download_%' OR option_name LIKE '_site_transient_pdfinvx_download_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pdfinvx_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pdfinvx_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pdfinvx_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pdfinvx_invoice_number'"
