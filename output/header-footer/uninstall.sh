#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hefo_dismissed'
wp option delete 'hefo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hefo_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hefo_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hefo_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hefo_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hefo_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hefo_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hefo_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hefo_after'"
