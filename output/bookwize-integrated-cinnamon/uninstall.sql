-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bw_apiBaseUrl', 'bw_apiKey', 'bw_hotelId', 'bw_primary_color', 'bw_secondary_color', 'bw_header_color', 'wp-dynamic-css-cache', 'bw_enable_jcc', 'bw_preload', 'bw_currency', 'bw_debug', 'bw_header', 'bw_group_text', 'bw_theme', 'bw_jcc_password', 'bw_jcc_merchant', 'bw_jcc_acquirer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bookwize_integrated_page_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('bookwize_integrated_page_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('bookwize_integrated_page_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bookwize_integrated_page_type');

