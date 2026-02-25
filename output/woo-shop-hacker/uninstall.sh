#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_shop_hacker_apikey'
wp option delete 'woo_shop_hacker_apisecret'
wp option delete 'woo_shop_hacker_merchantid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shop_hacker_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shop_hacker_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shop_hacker_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shop_hacker_sent'"
