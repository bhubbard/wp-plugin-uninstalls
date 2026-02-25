#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dw_verify_max_resend_allowed'
wp option delete 'dw_verify_authorize_page'
wp option delete 'dw_verify_autologin'
wp option delete 'dw_verify_redirect_page'
wp option delete 'dwvrf_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verify-lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verify-lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verify-lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verify-lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verify-lock-hash-method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verify-lock-hash-method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verify-lock-hash-method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verify-lock-hash-method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verify-link-attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verify-link-attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verify-link-attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verify-link-attempts'"
