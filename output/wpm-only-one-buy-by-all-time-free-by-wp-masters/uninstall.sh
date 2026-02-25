#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'only_one_buy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_once'"
