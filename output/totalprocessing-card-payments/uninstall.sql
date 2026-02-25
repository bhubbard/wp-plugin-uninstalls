-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_tp_cardsv3_settings', 'wc_totalprocessing_applepay_permalinks_flushed', 'applepayDomainRegStatus', 'woocommerce_email_from_address', 'woocommerce_email_from_name', 'applepayDomainRegStatusHash', 'wc_totalprocessing_applepay_merchantIdentifier');
DELETE FROM wp_options WHERE option_name LIKE 'checkout_used_%';
DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_iframe';
DELETE FROM wp_options WHERE option_name LIKE 'wc_token_removal_log_%';
DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_e2e';
DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_cbk';
DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_iframe_url';
DELETE FROM wp_options WHERE option_name LIKE '%synced_data';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%gateway_settings_sync';
DELETE FROM wp_options WHERE option_name LIKE 'checkout_used_%';
DELETE FROM wp_options WHERE option_name LIKE 'tp_applepay_checkout_%';
DELETE FROM wp_options WHERE option_name LIKE 'checkout_%';
DELETE FROM wp_options WHERE option_name LIKE 'applepay_cart_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_applepay_checkout_id', '_applepay_checkout_timestamp', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_applepay_checkout_id', '_applepay_checkout_timestamp', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_applepay_checkout_id', '_applepay_checkout_timestamp', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_applepay_checkout_id', '_applepay_checkout_timestamp', '_wp_page_template');

