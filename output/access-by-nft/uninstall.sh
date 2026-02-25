#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'web3devs_abnft_configured_coins_setting'
wp option delete 'web3devs_abnft_denial_page_setting'
wp option delete 'web3devs_abnft_api_key_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_web3devs_abnft_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_web3devs_abnft_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_web3devs_abnft_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_web3devs_abnft_meta_key'"
