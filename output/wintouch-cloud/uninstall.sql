-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_round_at_subtotal', 'wintouch_userid', 'wintouch_enterpriseid', 'wintouch_shopurl', 'wintouch_apikey', 'wintouch_usertoken', 'wintouch_lastsync', 'wintouch_setting_orderstate', 'wintouch_setting_syncstock', 'woocommerce_store_address');

