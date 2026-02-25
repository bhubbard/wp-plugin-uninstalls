-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pjci_api_key', 'pjci_sizes', 'pjci_responseCode', 'pjci_compression_timing', 'pjci_quota_remaining', 'pjci_total_credits', 'pjci_plan_name', 'pjci_quota_total', 'pjci_quota_used', 'pjci_response_message', 'pjci_response_errorMsg', 'pjci_api_responsecode');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'pjci_rpc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pjci_compress_images', 'pjci_check_bgcompress', 'pjci_single_images_check', 'pjci_inc_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('pjci_compress_images', 'pjci_check_bgcompress', 'pjci_single_images_check', 'pjci_inc_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('pjci_compress_images', 'pjci_check_bgcompress', 'pjci_single_images_check', 'pjci_inc_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pjci_compress_images', 'pjci_check_bgcompress', 'pjci_single_images_check', 'pjci_inc_no');

