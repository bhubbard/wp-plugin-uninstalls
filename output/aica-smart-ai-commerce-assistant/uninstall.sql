-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aica_settings', 'aica_magic_prompts', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'aica_installed', 'aica_version', 'aica_activated', 'aica_onboarding_completed', 'aica_last_indexed', 'aica_system_prompts', 'aica_db_version', 'aica_activation_redirect', 'aica_indexing_progress', 'aica_product_count', 'aica_last_index_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aica_conversions', '_aica_conversion_value', 'aica_dismissed_notices', 'aica_onboarding_complete');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aica_conversions', '_aica_conversion_value', 'aica_dismissed_notices', 'aica_onboarding_complete');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aica_conversions', '_aica_conversion_value', 'aica_dismissed_notices', 'aica_onboarding_complete');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aica_conversions', '_aica_conversion_value', 'aica_dismissed_notices', 'aica_onboarding_complete');

