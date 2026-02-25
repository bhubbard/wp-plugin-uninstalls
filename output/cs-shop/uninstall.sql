-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csshop_rakuten_aid', 'csshop_rakuten_did', 'csshop_amazon_access_id', 'csshop_amazon_secret_id', 'csshop_amazon_assoc', 'csshop_yahoo_appid', 'csshop_yahoo_affiliate_id', 'csshop_linkshare_token', 'csshop_valuecommerce_token');

