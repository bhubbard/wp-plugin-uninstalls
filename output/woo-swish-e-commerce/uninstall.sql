-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_swish_settings', 'swish_northmill_notice_displayed_2', 'swish_refresh_token', 'swish_access_token', 'swish_notices', 'swish_activated_or_upgraded', 'handle_swish_account', 'swish_retrieve_payment_info', 'swish_activated', 'swish_did_show_connection_info', 'swish_did_show_legacy_info', 'swish_upgraded', 'swish_connect_result', 'swish_activation_time', 'swish_upgraded_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_swish_purchase_age_limit', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_swish_purchase_age_limit', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_swish_purchase_age_limit', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_swish_purchase_age_limit', '_wp_page_template');

