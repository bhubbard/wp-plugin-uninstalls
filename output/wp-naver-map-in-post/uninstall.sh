#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alghost-navermap-client-id'
wp option delete 'alghost-navermap-client-secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keyword'"
