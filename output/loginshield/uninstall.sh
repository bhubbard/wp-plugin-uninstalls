#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginshield_activation_redirect'
wp option delete 'loginshield_realm_id'
wp option delete 'loginshield_access_token'
wp option delete 'loginshield_access_token_not_after'
wp option delete 'loginshield_refresh_token'
wp option delete 'loginshield_refresh_token_not_after'
wp option delete 'loginshield_webauthz_discovery_uri'
wp option delete 'loginshield_webauthz_register_uri'
wp option delete 'loginshield_webauthz_request_uri'
wp option delete 'loginshield_webauthz_exchange_uri'
wp option delete 'loginshield_client_id'
wp option delete 'loginshield_client_token'
wp option delete 'loginshield_realm'
wp option delete 'loginshield_scope'
wp option delete 'loginshield_path'
wp option delete 'loginshield_client_state'
wp option delete 'loginshield_login_page'
wp option delete 'loginshield_authorization_token'
wp option delete 'loginshield_access_token_max_seconds'
wp option delete 'loginshield_refresh_token_max_seconds'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginshield_is_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginshield_is_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginshield_is_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginshield_is_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginshield_is_confirmed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginshield_is_confirmed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginshield_is_confirmed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginshield_is_confirmed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginshield_is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginshield_is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginshield_is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginshield_is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginshield_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginshield_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginshield_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginshield_user_id'"
