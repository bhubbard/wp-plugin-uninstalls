#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myofs_opt_expire'
wp option delete 'myofs_opt_data'
wp option delete 'woocommerce_api_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'myofs_activation_redirect'
wp option delete 'myofs_db_version'
wp option delete 'myofs_db_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myofs_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myofs_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myofs_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myofs_category'"
