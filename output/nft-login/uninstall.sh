#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_contract_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_chain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reg_login'"
wp option delete 'nft_login_setting_reg_login'
wp option delete 'nft_login_setting_contract_address'
wp option delete 'nft_login_setting_chain'
wp option delete 'nft_login_setting_token_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nft_login_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nft_login_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nft_login_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nft_login_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nftlogin_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nftlogin_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nftlogin_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nftlogin_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nftlogin_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nftlogin_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nftlogin_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nftlogin_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nftlogin_contract_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nftlogin_contract_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nftlogin_contract_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nftlogin_contract_address'"
