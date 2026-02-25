-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inpost_intl_code_verifier', 'inpost_intl_code_challenge', 'inpost_international_connection_timeout', 'inpost_international_settings_merchant', 'inpost_international_settings_auth', 'inpost_international_only_for_admins', 'inpost_international_settings_products', 'woocommerce_custom_orders_table_enabled', 'inpost_international_settings_sending', 'inpost_international_settings_dispatch_points', 'inpost_international_settings_geowidget', 'active_sitewide_plugins', 'woocommerce_default_country', 'easypack_geowidget_production_token', 'easypack_geowidget_sandbox_token', 'inpost_intl_activated', 'woocommerce_email_footer_text', 'inpost_intl_api_token_refreshing');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_template_rates';
DELETE FROM wp_options WHERE option_name LIKE '%_rates';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('inpost_international_parcel_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('inpost_international_parcel_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('inpost_international_parcel_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('inpost_international_parcel_template');

