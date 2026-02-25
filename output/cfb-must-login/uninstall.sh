#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfb_must_login_version'
wp option delete 'cfb_must_login_require_login'
wp option delete 'cfb_must_login_protect_rest_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfb_must_login_cache_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfb_must_login_cache_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfb_must_login_cache_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfb_must_login_cache_notice_dismissed'"
