#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'finpose_accounts'
wp option delete 'fin-expense-categories'
wp option delete 'finpose_removed_accounts'
wp option delete 'finpose_settings'
wp option delete 'finpose_errors'
wp option delete 'fin-cost-categories'
wp option delete 'fin-acquisition-categories'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-categories'"
wp option delete 'fin-spending-types'
wp option delete 'active_sitewide_plugins'
wp option delete 'finpose_version'
wp option delete 'finpose_db_version'
wp option delete 'fs_debug_mode'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wf_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wf_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wf_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wf_invoice_number'"
