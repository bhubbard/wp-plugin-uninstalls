-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mxmpotm_custom_markup_notice', '_mxmpotm_alphabet_order_notice', 'mx_google_map_api_key', 'mxmpotm_flush_rewrite_rules');

