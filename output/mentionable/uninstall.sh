#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mentions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mentions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mentions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mentions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mentioned_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mentioned_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mentioned_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mentioned_by'"
