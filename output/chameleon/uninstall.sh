#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpch_news_ticker'
wp option delete 'wp_chameleon'
wp option delete 'wp_chameleon_background'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpc_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpc_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpc_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpc_theme'"
