-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcwallet_head_code', 'mcwallet_body_code', 'mcwallet_footer_code', 'mcwallet_tokens', 'mcwallet_own_before_faqs', 'mcwallet_own_after_faqs', 'mcwallet_own_before_menus', 'mcwallet_own_after_menus', 'mcwallet_use_testnet', 'mcwallet_enable_stats', 'mcwallet_page_title', 'mcwallet_logo_link', 'selected_exchange_mode', 'selected_quickswap_mode', 'default_language', 'mcwallet_exchange_disabled', 'mcwallet_is_home', 'mcwallet_is_logged', 'mcwallet_show_all_enabled_wallets', 'mcwallet_remember_userwallet', 'mcwallet_disable_internal', 'mcwallet_ghost_enabled', 'mcwallet_next_enabled', 'mcwallet_invoice_enabled', 'zerox_fee_percent', 'eth_fee_address', 'btc_fee', 'btc_min', 'btc_fee_address', 'eth_fee', 'eth_min', 'tokens_fee', 'tokens_min', 'fiat_currency', 'fiat_gateway_url', 'transak_api_key', 'show_howitworks', 'mcwallet_hide_service_links', 'string_splash_loading', 'mcwallet_strings', 'string_splash_first_loading', 'mcwallet_logo', 'mcwallet_dark_logo', 'mcwallet_slug', 'mcwallet_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mcwallet_backup', '_mcwallet_data', 'banner_text', 'banner_url', 'banner_icon', 'banner_image', 'banner_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mcwallet_backup', '_mcwallet_data', 'banner_text', 'banner_url', 'banner_icon', 'banner_image', 'banner_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mcwallet_backup', '_mcwallet_data', 'banner_text', 'banner_url', 'banner_icon', 'banner_image', 'banner_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mcwallet_backup', '_mcwallet_data', 'banner_text', 'banner_url', 'banner_icon', 'banner_image', 'banner_color');

