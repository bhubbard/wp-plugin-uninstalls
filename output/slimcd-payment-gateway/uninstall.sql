-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_slimcd_payment_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method_title', '_slimcd_sessionid', '_slimcd_postback_done');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method_title', '_slimcd_sessionid', '_slimcd_postback_done');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method_title', '_slimcd_sessionid', '_slimcd_postback_done');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method_title', '_slimcd_sessionid', '_slimcd_postback_done');

