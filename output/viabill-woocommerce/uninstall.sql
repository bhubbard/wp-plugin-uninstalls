-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viabill_secret', 'viabill_key', 'viabill_pricetag', 'woocommerce_default_country', 'viabill_db_update', 'woocommerce_viabill_try_settings', 'woocommerce_viabill_settings', 'viabill_gateway_disabled', 'viabill_activation_redirect', 'woocommerce_price_num_decimals', 'viabill_decimals', 'my_viabill_token_url');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'dismissed_viabil_updating_notice', 'dismissed_viabil_updated_notice', 'dismissed_viabill_decimals_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'dismissed_viabil_updating_notice', 'dismissed_viabil_updated_notice', 'dismissed_viabill_decimals_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'dismissed_viabil_updating_notice', 'dismissed_viabil_updated_notice', 'dismissed_viabill_decimals_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'dismissed_viabil_updating_notice', 'dismissed_viabil_updated_notice', 'dismissed_viabill_decimals_notice');

