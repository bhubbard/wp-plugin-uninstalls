#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'web3-wallet-login_options'
wp option delete 'web3login_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WEB3_WALLET_LOGIN_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WEB3_WALLET_LOGIN_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WEB3_WALLET_LOGIN_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WEB3_WALLET_LOGIN_address'"
