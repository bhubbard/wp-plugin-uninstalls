#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dash_rewriter_settings_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dash_rewrite_rewrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dash_rewrite_rewrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dash_rewrite_rewrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dash_rewrite_rewrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dash_rewritten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dash_rewritten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dash_rewritten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dash_rewritten'"
