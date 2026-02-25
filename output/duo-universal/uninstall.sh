#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duoup_client_id'
wp option delete 'duoup_client_secret'
wp option delete 'duoup_api_host'
wp option delete 'duoup_roles'
wp option delete 'duoup_failmode'
wp option delete 'duoup_xmlrpc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duo_auth_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duo_auth_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duo_auth_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duo_auth_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duo_auth_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duo_auth_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duo_auth_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duo_auth_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duo_auth_oidc_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duo_auth_oidc_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duo_auth_oidc_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duo_auth_oidc_state'"
