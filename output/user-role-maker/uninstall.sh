#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pxls_wprm_installed'
wp option delete 'pxls_wprm_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm_user_caps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm_user_caps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm_user_caps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm_user_caps'"
