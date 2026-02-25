#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'internet4associations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'internet4associations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'internet4associations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'internet4associations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'internet4associations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
