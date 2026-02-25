#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hamelp_rate_require_login'
wp option delete 'hamelp_rate_per_ip'
wp option delete 'hamelp_rate_daily'
wp option delete 'hamelp_rate_window'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accessibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accessibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accessibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accessibility'"
