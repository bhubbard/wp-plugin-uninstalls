#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bellows_pro_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'query_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'query_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'query_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'query_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'query_args'"
