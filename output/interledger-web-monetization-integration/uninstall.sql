-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intlwemo_post_type_settings', 'intlwemo_wallet_address_connected_list', 'intlwemo_enable_authors', 'intlwemo_excluded_authors', 'intlwemo_banner_config', 'intlwemo_enabled', 'intlwemo_wallet_address', 'intlwemo_wallet_address_connected', 'intlwemo_multi_wallets_option', 'intlwemo_banner_enabled', 'intlwemo_enable_country_wallets', 'intlwemo_wallet_address_overrides', 'intlwemo_custom_banner', 'intlwemo_banner_published', 'wm_enabled', 'wm_wallet_address', 'wm_wallet_address_connected', 'wm_enable_authors', 'wm_multi_wallets_option', 'wm_post_type_settings', 'wm_banner_enabled', 'wm_excluded_authors', 'wm_banner_config', 'wm_banner_published', 'wm_enable_country_wallets', 'wm_wallet_address_overrides');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('intlwemo_wallet_address', 'intlwemo_wallet_address_connected', 'intlwemo_disabled', 'wm_wallet_address', 'wm_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('intlwemo_wallet_address', 'intlwemo_wallet_address_connected', 'intlwemo_disabled', 'wm_wallet_address', 'wm_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('intlwemo_wallet_address', 'intlwemo_wallet_address_connected', 'intlwemo_disabled', 'wm_wallet_address', 'wm_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('intlwemo_wallet_address', 'intlwemo_wallet_address_connected', 'intlwemo_disabled', 'wm_wallet_address', 'wm_disabled');

