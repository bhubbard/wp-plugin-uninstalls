-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tunesly_hash', 'ipinfodb_status');
DELETE FROM wp_options WHERE option_name LIKE '%_linkshare_token';
DELETE FROM wp_options WHERE option_name LIKE '%_linkshare_generate_timeout';
DELETE FROM wp_options WHERE option_name LIKE '%_linkshare_advertiser_id';
DELETE FROM wp_options WHERE option_name LIKE '%_result_label';
DELETE FROM wp_options WHERE option_name LIKE '%_store_country';
DELETE FROM wp_options WHERE option_name LIKE '%_result_column';
DELETE FROM wp_options WHERE option_name LIKE '%_result_row';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_ipinfodb_key';
DELETE FROM wp_options WHERE option_name LIKE '%_store_result_item';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_custom_keyword';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_custom_keyword';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_custom_keyword';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_custom_keyword';

