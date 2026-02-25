#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pbm_2fa_management_certificate'
wp option delete 'pbm_2fa_application_certificate'
wp option delete 'pbm_2fa_message_title'
wp option delete 'pbm_2fa_message'
wp option delete 'pbm_2fa_timeout'
wp option delete 'pbm_2fa_mng_url'
wp option delete 'pbm_2fa_auth_url'
wp option delete 'pbm_2fa_proxy_url'
wp option delete 'pbm_2fa_proxy_port'
wp option delete 'pbm_2fa_proxy_pwd'
wp option delete 'pbm_2fa_application_pwd'
wp option delete 'pbm_2fa_management_pwd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbm_2fa_authentication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbm_2fa_authentication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbm_2fa_authentication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbm_2fa_authentication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbm_2fa_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbm_2fa_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbm_2fa_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbm_2fa_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbm_2fa_user_oid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbm_2fa_user_oid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbm_2fa_user_oid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbm_2fa_user_oid'"
