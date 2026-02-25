#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surleg_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surl_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surl_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surl_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surl_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surl_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surl_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surl_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surl_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_published'"
