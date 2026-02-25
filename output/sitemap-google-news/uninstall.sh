#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gns_name'
wp option delete 'gns_genre'
wp option delete 'gns_keyword'
wp option delete 'gns_posts'
wp option delete 'gns_lang'
wp option delete 'gns_access'
wp option delete 'gns_stock_tickers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_genre'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_genre'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_genre'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_genre'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_stock_tickers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_stock_tickers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_stock_tickers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_stock_tickers'"
