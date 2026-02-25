-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_endpoint';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ntvwc_token_value', '_ntvwc_type_token', '_ntvwc_token_type', '_ntvwc_token_validation_value', '_ntvwc_token_expiry_in_day', '_ntvwc_restrict_url_access', '_ntvwc_hashed_user_site_urls', '_downloadable_files', '_ntvwc_product_package_type', '_ntvwc_registered_token_ids', '_ntvwc_purchased_token_signers', '_ntvwc_used_values', '_ntvwc_used_secrets', '_ntvwc_purchased_tokens', '_ntvwc_used_signers', '_ntvwc_token_params');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ntvwc_token_value', '_ntvwc_type_token', '_ntvwc_token_type', '_ntvwc_token_validation_value', '_ntvwc_token_expiry_in_day', '_ntvwc_restrict_url_access', '_ntvwc_hashed_user_site_urls', '_downloadable_files', '_ntvwc_product_package_type', '_ntvwc_registered_token_ids', '_ntvwc_purchased_token_signers', '_ntvwc_used_values', '_ntvwc_used_secrets', '_ntvwc_purchased_tokens', '_ntvwc_used_signers', '_ntvwc_token_params');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ntvwc_token_value', '_ntvwc_type_token', '_ntvwc_token_type', '_ntvwc_token_validation_value', '_ntvwc_token_expiry_in_day', '_ntvwc_restrict_url_access', '_ntvwc_hashed_user_site_urls', '_downloadable_files', '_ntvwc_product_package_type', '_ntvwc_registered_token_ids', '_ntvwc_purchased_token_signers', '_ntvwc_used_values', '_ntvwc_used_secrets', '_ntvwc_purchased_tokens', '_ntvwc_used_signers', '_ntvwc_token_params');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ntvwc_token_value', '_ntvwc_type_token', '_ntvwc_token_type', '_ntvwc_token_validation_value', '_ntvwc_token_expiry_in_day', '_ntvwc_restrict_url_access', '_ntvwc_hashed_user_site_urls', '_downloadable_files', '_ntvwc_product_package_type', '_ntvwc_registered_token_ids', '_ntvwc_purchased_token_signers', '_ntvwc_used_values', '_ntvwc_used_secrets', '_ntvwc_purchased_tokens', '_ntvwc_used_signers', '_ntvwc_token_params');

