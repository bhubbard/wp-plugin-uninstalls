#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boardDocumentManager_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdmchuhpl_formCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdmchuhpl_formCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdmchuhpl_formCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdmchuhpl_formCode'"
