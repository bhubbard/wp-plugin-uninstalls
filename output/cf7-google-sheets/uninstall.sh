#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7-sheets-config'

# Delete Transients
wp transient delete 'cf7_sheets_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_settings'"
