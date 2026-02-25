#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'security_enabled'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_wooreports_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
