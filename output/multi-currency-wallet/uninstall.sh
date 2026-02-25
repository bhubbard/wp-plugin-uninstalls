#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcwallet_head_code'
wp option delete 'mcwallet_body_code'
wp option delete 'mcwallet_footer_code'
wp option delete 'mcwallet_tokens'
wp option delete 'mcwallet_own_before_faqs'
wp option delete 'mcwallet_own_after_faqs'
wp option delete 'mcwallet_own_before_menus'
wp option delete 'mcwallet_own_after_menus'
wp option delete 'mcwallet_use_testnet'
wp option delete 'mcwallet_enable_stats'
wp option delete 'mcwallet_page_title'
wp option delete 'mcwallet_logo_link'
wp option delete 'selected_exchange_mode'
wp option delete 'selected_quickswap_mode'
wp option delete 'default_language'
wp option delete 'mcwallet_exchange_disabled'
wp option delete 'mcwallet_is_home'
wp option delete 'mcwallet_is_logged'
wp option delete 'mcwallet_show_all_enabled_wallets'
wp option delete 'mcwallet_remember_userwallet'
wp option delete 'mcwallet_disable_internal'
wp option delete 'mcwallet_ghost_enabled'
wp option delete 'mcwallet_next_enabled'
wp option delete 'mcwallet_invoice_enabled'
wp option delete 'zerox_fee_percent'
wp option delete 'eth_fee_address'
wp option delete 'btc_fee'
wp option delete 'btc_min'
wp option delete 'btc_fee_address'
wp option delete 'eth_fee'
wp option delete 'eth_min'
wp option delete 'tokens_fee'
wp option delete 'tokens_min'
wp option delete 'fiat_currency'
wp option delete 'fiat_gateway_url'
wp option delete 'transak_api_key'
wp option delete 'show_howitworks'
wp option delete 'mcwallet_hide_service_links'
wp option delete 'string_splash_loading'
wp option delete 'mcwallet_strings'
wp option delete 'string_splash_first_loading'
wp option delete 'mcwallet_logo'
wp option delete 'mcwallet_dark_logo'
wp option delete 'mcwallet_slug'
wp option delete 'mcwallet_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcwallet_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcwallet_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcwallet_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcwallet_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcwallet_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcwallet_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcwallet_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcwallet_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'banner_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'banner_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'banner_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'banner_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'banner_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'banner_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'banner_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'banner_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'banner_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'banner_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'banner_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'banner_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'banner_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'banner_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'banner_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'banner_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'banner_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'banner_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'banner_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'banner_color'"
