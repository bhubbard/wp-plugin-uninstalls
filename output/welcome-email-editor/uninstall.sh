#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weed_v5_compatibility'
wp option delete 'sb_we_settings'
wp option delete 'weed_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'server_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'server_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'server_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'server_response'"
