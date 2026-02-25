#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpc_postmeta'
wp option delete 'dpc_content'
wp option delete 'update_dpc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_set_default_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_set_default_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_set_default_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_set_default_values'"
