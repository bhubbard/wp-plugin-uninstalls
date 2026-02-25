#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmapi_server_url'
wp option delete 'pmapi_api_dir'
wp option delete 'pmapi_api_password'
wp option delete 'pmapi_site_password'
wp option delete 'pmapi_version'
wp option delete 'pmapi_avatar_max'
wp option delete 'pmapi_useradmin'
wp option delete 'pmapi_gameadmin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmapi_oldpwhash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmapi_oldpwhash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmapi_oldpwhash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmapi_oldpwhash'"
