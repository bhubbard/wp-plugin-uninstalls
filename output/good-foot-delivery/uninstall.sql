-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_goodfootdelivery_debug_mode', 'wc_goodfootdelivery_api_username', 'wc_goodfootdelivery_api_email', 'wc_goodfootdelivery_api_user_id', 'wc_goodfootdelivery_environment', 'wc_goodfootdelivery_auto_complete_shipped_orders', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_shipwire_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_shipwire_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_shipwire_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_shipwire_manage_stock');

