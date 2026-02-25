#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ymid_captcha_key'
wp option delete 'ymid_captcha_secret'
wp option delete 'ymid_forms'
wp option delete 'ymid_failed_login_allow'
wp option delete 'ymid_ym_login'
wp option delete 'ymid_redirect_option'
wp option delete 'ymid_redirect_page'
wp option delete 'ymid_working'
wp option delete 'ymid_error'
wp option delete 'ymid_google_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ymid_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ymid_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ymid_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ymid_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ymid_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ymid_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ymid_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ymid_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ymid_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ymid_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ymid_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ymid_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ymid_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ymid_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ymid_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ymid_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ymid_did_band'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ymid_did_band'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ymid_did_band'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ymid_did_band'"
