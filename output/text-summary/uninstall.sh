#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'text_summary_api_key'
wp option delete 'text_summary_title'
wp option delete 'text_summary_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text-summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text-summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text-summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text-summary'"
