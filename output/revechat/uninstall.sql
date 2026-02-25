-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revechat_aid', 'revechat_wc_storeUrl', 'woocommerce_currency', 'revechat_wc_consumerKey', 'revechat_wc_consumerSecret', 'revechat_wc_aid');

