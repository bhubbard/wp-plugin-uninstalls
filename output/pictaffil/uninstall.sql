-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pictaffil_paa_enabled', 'pictaffil_paa_access_key', 'pictaffil_paa_secret_key', 'pictaffil_paa_partner_tag', 'pictaffil_api_key', 'pictaffil_paa_region', 'pictaffil_affiliate_id', 'pictaffil_settings', 'pictaffil_card_settings', 'pictaffil_search_method', 'pictaffil_history', 'pictaffil_version', 'pictaffil_installed', 'pictaffil_error_logs', 'pictaffil_amazon_search_type', 'pictaffil_amazon_access_key', 'pictaffil_amazon_secret_key', 'pictaffil_integration_options', 'pictaffil_auto_format_links', 'pictaffil_db_version', 'pictaffil_paa_credentials_valid', 'pictaffil_search_stats_all', 'pictaffil_search_stats_day', 'pictaffil_search_stats_week', 'pictaffil_search_stats_month', 'pictaffil_api_key_verified', 'pictaffil_account_info', 'pictaffil_last_error');
DELETE FROM wp_options WHERE option_name LIKE 'pictaffil_debug_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pictaffil_carousel_settings', '_pictaffil_saved_products', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pictaffil_carousel_settings', '_pictaffil_saved_products', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pictaffil_carousel_settings', '_pictaffil_saved_products', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pictaffil_carousel_settings', '_pictaffil_saved_products', '_wp_attachment_image_alt');

