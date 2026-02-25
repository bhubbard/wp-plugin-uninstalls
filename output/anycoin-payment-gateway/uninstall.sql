-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anycoin_db_check', 'woocommerce_anycoin_payment_settings', 'zano_payment_db_version', 'woocommerce_zano_payment_settings', 'cron', 'woocommerce_myaccount_page_id', 'anycoin_last_status_update', 'zano_last_status_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_anycoin_selected_asset', '_anycoin_asset_id', '_anycoin_asset_amount', '_anycoin_verification_attempts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_anycoin_selected_asset', '_anycoin_asset_id', '_anycoin_asset_amount', '_anycoin_verification_attempts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_anycoin_selected_asset', '_anycoin_asset_id', '_anycoin_asset_amount', '_anycoin_verification_attempts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_anycoin_selected_asset', '_anycoin_asset_id', '_anycoin_asset_amount', '_anycoin_verification_attempts');

