-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('monft_tokenid_to_owner');
DELETE FROM wp_options WHERE option_name LIKE 'monft_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mo_nft_collection_banner_image', 'mo_nft_collection_profile_image', 'mo_nft_collection_description', 'mo_nft_collection_name', '_monft_nft_listed', '_product_attributes', '_monft_nft_contract_address', '_thumbnail_id', '_monft_listed_signed_voucher', '_monft_nft', '_stock', '_stock_status', 'monft_metadata_cid');
DELETE FROM wp_usermeta WHERE meta_key IN ('mo_nft_collection_banner_image', 'mo_nft_collection_profile_image', 'mo_nft_collection_description', 'mo_nft_collection_name', '_monft_nft_listed', '_product_attributes', '_monft_nft_contract_address', '_thumbnail_id', '_monft_listed_signed_voucher', '_monft_nft', '_stock', '_stock_status', 'monft_metadata_cid');
DELETE FROM wp_termmeta WHERE meta_key IN ('mo_nft_collection_banner_image', 'mo_nft_collection_profile_image', 'mo_nft_collection_description', 'mo_nft_collection_name', '_monft_nft_listed', '_product_attributes', '_monft_nft_contract_address', '_thumbnail_id', '_monft_listed_signed_voucher', '_monft_nft', '_stock', '_stock_status', 'monft_metadata_cid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mo_nft_collection_banner_image', 'mo_nft_collection_profile_image', 'mo_nft_collection_description', 'mo_nft_collection_name', '_monft_nft_listed', '_product_attributes', '_monft_nft_contract_address', '_thumbnail_id', '_monft_listed_signed_voucher', '_monft_nft', '_stock', '_stock_status', 'monft_metadata_cid');

