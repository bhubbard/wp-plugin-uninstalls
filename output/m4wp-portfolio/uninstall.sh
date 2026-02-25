#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'm4wp_portfolio_item_details_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'm4wp_portfolio_item_details_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'm4wp_portfolio_item_details_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'm4wp_portfolio_item_details_client'"
