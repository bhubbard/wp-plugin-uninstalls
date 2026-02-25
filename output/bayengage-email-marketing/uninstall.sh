#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BEM_JUST_INSTALLED'
wp option delete 'BEM_CONNECTION_USER_ID'
wp option delete 'bem_redirect_url'
wp option delete 'BEM_CONNECTION_DEACTIVATE_USER_ID'
wp option delete 'bem_woo_sms_optin_status'
wp option delete 'BEM_CONNECTION_STATUS'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
