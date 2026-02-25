#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_gf_billingo_pro_enabled'
wp option delete '_gf_billingo_pro_key'
wp option delete '_gf_billingo_pro_email'
wp option delete '_gf_billingo_error'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gf_billingo_bank_accounts_%' OR option_name LIKE '_site_transient_gf_billingo_bank_accounts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gf_billingo_invoice_blocks_%' OR option_name LIKE '_site_transient_gf_billingo_invoice_blocks_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gf_billingo_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gf_billingo_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gf_billingo_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gf_billingo_admin_notices'"
