#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadlovers_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leadlovers-log-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leadlovers-log-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leadlovers-log-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leadlovers-log-key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leadlovers-integration-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leadlovers-integration-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leadlovers-integration-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leadlovers-integration-key'"
