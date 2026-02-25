#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'jwt_auth_purge_expired_refresh_tokens'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_refresh_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_refresh_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_refresh_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_refresh_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_refresh_tokens_expires_next'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_refresh_tokens_expires_next'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_refresh_tokens_expires_next'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_refresh_tokens_expires_next'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_pass'"
