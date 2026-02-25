#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ozh_yourls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yourls_fetching'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yourls_fetching'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yourls_fetching'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yourls_fetching'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yourls_shorturl_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yourls_shorturl_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yourls_shorturl_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yourls_shorturl_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yourls_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yourls_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yourls_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yourls_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yourls-keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yourls-keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yourls-keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yourls-keyword'"
