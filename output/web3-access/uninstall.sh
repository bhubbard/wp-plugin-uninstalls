#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metapress_restrict_site_access'
wp option delete 'metapress_site_access_required_products'
wp option delete 'metapress_redirect_type'
wp option delete 'metapress_redirect_page_id'
wp option delete 'metapress_redirect_custom_url'
wp option delete 'metapress_access_tokens_expire'
wp option delete 'metapress_moralis_api_key'
wp option delete 'metapress_opensea_api_key'
wp option delete 'metapress_supported_networks'
wp option delete 'metapress_supported_test_networks'
wp option delete 'metapress_ethereum_wallet_address'
wp option delete 'metapress_solana_wallet_address'
wp option delete 'metapress_live_mode'
wp option delete 'metapress_supported_token_types'
wp option delete 'metapress_nft_contract_list'
wp option delete 'metapress_custom_tokens_list'
wp option delete 'metapress_binance_cron'
wp option delete 'metapress_token_ratios_updated_timestamp'
wp option delete 'metapress_token_ratios'
wp option delete 'metapress_supported_post_types'
wp option delete 'metapress_woocommerce_filters_enabled'
wp option delete 'metapress_checkout_page'
wp option delete 'metapress_transactions_page'
wp option delete 'metapress_subscriptions_page'
wp option delete 'metapress_style_settings'
wp option delete 'metapress_allowed_test_address'
wp option delete 'metapress_solana_wallet_test_address'
wp option delete 'metapress_solana_rpc_url'
wp option delete 'metapress_text_settings'
wp option delete 'metapress_contract_addresses'
wp option delete 'metapress_api_request_match'
wp option delete 'wp_metapress_plugin_version'
wp option delete 'metapress_wallet_addresses'
wp option delete 'metapress_test_wallet_addresses'
wp option delete 'metapress_pages_created'
wp option delete 'metapress_update_request_key'

# Clear Cron Jobs
wp cron event delete 'metapress_send_subscription_renewal_reminders_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_is_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_is_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_is_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_is_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_interval_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_interval_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_interval_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_interval_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_nft_access_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_nft_access_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_nft_access_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_nft_access_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_price_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_price_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_price_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_price_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metapress_required_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metapress_required_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metapress_required_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metapress_required_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metapress_allow_page_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metapress_allow_page_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metapress_allow_page_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metapress_allow_page_access'"
