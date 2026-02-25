#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_portfolio_template'
wp option delete 'bp_portfolio_desc_max_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_portfolio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_portfolio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_portfolio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_portfolio_url'"
