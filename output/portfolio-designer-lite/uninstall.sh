#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'portfolio_designer_lite_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'pdl_is_optin'
wp option delete 'admin_url'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolio_lite_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolio_lite_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolio_lite_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolio_lite_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolio_lite_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolio_lite_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolio_lite_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolio_lite_label'"
