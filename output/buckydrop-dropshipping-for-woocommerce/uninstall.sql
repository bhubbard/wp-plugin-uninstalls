-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buckydrop_app_id', 'buckydrop_app_secret', 'buckydrop_merchant_id', 'buckydrop_shop_id');

