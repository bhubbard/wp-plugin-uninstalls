#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tim_default_content_lang'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qts_slug_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qts_slug_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qts_slug_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qts_slug_%'"
