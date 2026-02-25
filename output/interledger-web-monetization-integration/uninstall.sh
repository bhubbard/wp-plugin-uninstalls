#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intlwemo_post_type_settings'
wp option delete 'intlwemo_wallet_address_connected_list'
wp option delete 'intlwemo_enable_authors'
wp option delete 'intlwemo_excluded_authors'
wp option delete 'intlwemo_banner_config'
wp option delete 'intlwemo_enabled'
wp option delete 'intlwemo_wallet_address'
wp option delete 'intlwemo_wallet_address_connected'
wp option delete 'intlwemo_multi_wallets_option'
wp option delete 'intlwemo_banner_enabled'
wp option delete 'intlwemo_enable_country_wallets'
wp option delete 'intlwemo_wallet_address_overrides'
wp option delete 'intlwemo_custom_banner'
wp option delete 'intlwemo_banner_published'
wp option delete 'wm_enabled'
wp option delete 'wm_wallet_address'
wp option delete 'wm_wallet_address_connected'
wp option delete 'wm_enable_authors'
wp option delete 'wm_multi_wallets_option'
wp option delete 'wm_post_type_settings'
wp option delete 'wm_banner_enabled'
wp option delete 'wm_excluded_authors'
wp option delete 'wm_banner_config'
wp option delete 'wm_banner_published'
wp option delete 'wm_enable_country_wallets'
wp option delete 'wm_wallet_address_overrides'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intlwemo_wallet_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intlwemo_wallet_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intlwemo_wallet_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intlwemo_wallet_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intlwemo_wallet_address_connected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intlwemo_wallet_address_connected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intlwemo_wallet_address_connected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intlwemo_wallet_address_connected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intlwemo_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intlwemo_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intlwemo_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intlwemo_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wm_wallet_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wm_wallet_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wm_wallet_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wm_wallet_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wm_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wm_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wm_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wm_disabled'"
