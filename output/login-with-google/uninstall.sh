#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_google_login_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oauth_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oauth_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oauth_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oauth_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oauth_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oauth_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oauth_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oauth_provider'"
