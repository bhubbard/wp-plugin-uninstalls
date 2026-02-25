-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'sp_license', 'sp', 'sp_db_version', 'sp_uninstall', 'recently_activated', 'sp_message', 'sp_license_issue', 'sp_updated', 'sp_activated', 'sp-payment-last', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp-msg-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_provider_url', '_transaction_data', '_wpjb_stripe_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_provider_url', '_transaction_data', '_wpjb_stripe_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_provider_url', '_transaction_data', '_wpjb_stripe_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_provider_url', '_transaction_data', '_wpjb_stripe_customer_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sp_transaction_id%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sp_transaction_id%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sp_transaction_id%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sp_transaction_id%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

