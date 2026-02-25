-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('momcs_sync_seller_id', 'momcs_miniorange_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_mapping_saved';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_momcs_amz_asin', '_momcs_amz_listing_issues', '_momcs_amz_listing_status', '_momcs_amz_channel_id', '_momcs_amz_id_type', '_momcs_amz_id_value', '_momcs_amz_condition', '_momcs_sync_restrictions', '_momcs_asin', '_momcs_sync_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_momcs_amz_asin', '_momcs_amz_listing_issues', '_momcs_amz_listing_status', '_momcs_amz_channel_id', '_momcs_amz_id_type', '_momcs_amz_id_value', '_momcs_amz_condition', '_momcs_sync_restrictions', '_momcs_asin', '_momcs_sync_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_momcs_amz_asin', '_momcs_amz_listing_issues', '_momcs_amz_listing_status', '_momcs_amz_channel_id', '_momcs_amz_id_type', '_momcs_amz_id_value', '_momcs_amz_condition', '_momcs_sync_restrictions', '_momcs_asin', '_momcs_sync_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_momcs_amz_asin', '_momcs_amz_listing_issues', '_momcs_amz_listing_status', '_momcs_amz_channel_id', '_momcs_amz_id_type', '_momcs_amz_id_value', '_momcs_amz_condition', '_momcs_sync_restrictions', '_momcs_asin', '_momcs_sync_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_momcs_amz_bullet_point_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_momcs_amz_bullet_point_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_momcs_amz_bullet_point_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_momcs_amz_bullet_point_%';

