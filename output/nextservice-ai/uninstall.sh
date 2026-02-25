#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nextservice_ai_embed_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nextservice_ai_branch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nextservice_ai_branch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nextservice_ai_branch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nextservice_ai_branch'"
