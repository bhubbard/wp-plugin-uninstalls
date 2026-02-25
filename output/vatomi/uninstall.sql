-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vatomi_licenses', 'vatomi_exist_products', 'vatomi_import_errors', 'vatomi_import_success', 'vatomi-logger-prune-last-run');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vatomi_access_token', 'vatomi_refresh_token', 'vatomi_token_expires_in', 'vatomi_username', 'vatomi_account_details', 'first_name', 'last_name', '_vatomi_license_site', '_vatomi_license_user_id', '_vatomi_license_full_data', '_vatomi_license_sold_at', '_vatomi_license_supported_until', '_vatomi_license_license', '_vatomi_license_code', '_vatomi_license_support_amount', '_vatomi_license_amount', '_vatomi_license_item_name', '_vatomi_license_item_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('vatomi_access_token', 'vatomi_refresh_token', 'vatomi_token_expires_in', 'vatomi_username', 'vatomi_account_details', 'first_name', 'last_name', '_vatomi_license_site', '_vatomi_license_user_id', '_vatomi_license_full_data', '_vatomi_license_sold_at', '_vatomi_license_supported_until', '_vatomi_license_license', '_vatomi_license_code', '_vatomi_license_support_amount', '_vatomi_license_amount', '_vatomi_license_item_name', '_vatomi_license_item_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('vatomi_access_token', 'vatomi_refresh_token', 'vatomi_token_expires_in', 'vatomi_username', 'vatomi_account_details', 'first_name', 'last_name', '_vatomi_license_site', '_vatomi_license_user_id', '_vatomi_license_full_data', '_vatomi_license_sold_at', '_vatomi_license_supported_until', '_vatomi_license_license', '_vatomi_license_code', '_vatomi_license_support_amount', '_vatomi_license_amount', '_vatomi_license_item_name', '_vatomi_license_item_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vatomi_access_token', 'vatomi_refresh_token', 'vatomi_token_expires_in', 'vatomi_username', 'vatomi_account_details', 'first_name', 'last_name', '_vatomi_license_site', '_vatomi_license_user_id', '_vatomi_license_full_data', '_vatomi_license_sold_at', '_vatomi_license_supported_until', '_vatomi_license_license', '_vatomi_license_code', '_vatomi_license_support_amount', '_vatomi_license_amount', '_vatomi_license_item_name', '_vatomi_license_item_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_vatomi_license_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_vatomi_license_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_vatomi_license_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vatomi_license_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_vatomi_license_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_vatomi_license_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_vatomi_license_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vatomi_license_item_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_vatomi_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_vatomi_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_vatomi_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vatomi_log_%';

