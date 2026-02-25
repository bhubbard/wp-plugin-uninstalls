#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbu_taxonomy_meta'
wp option delete 'sbu_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_no_fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_no_fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_no_fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_no_fallback'"
