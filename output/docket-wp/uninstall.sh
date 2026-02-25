#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'docket_sso_secret_key'
wp option delete 'dwp_install_id'
wp option delete 'docket_wp_options'
wp option delete 'docketwp_dismissed_wp_pointer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'docket_sso_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'docket_sso_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'docket_sso_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'docket_sso_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'docket_premium_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'docket_premium_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'docket_premium_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'docket_premium_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'docket_sso_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'docket_sso_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'docket_sso_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'docket_sso_data'"
