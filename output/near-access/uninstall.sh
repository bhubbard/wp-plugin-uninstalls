#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'web3devs_near_access_configured_coins_setting'
wp option delete 'web3devs_near_access_denial_page_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_web3devs_near_access_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_web3devs_near_access_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_web3devs_near_access_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_web3devs_near_access_meta_key'"
