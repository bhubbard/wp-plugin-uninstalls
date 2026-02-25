#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'some_likes'
wp option delete 'one_like'
wp option delete 'no_likes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_likes'"
