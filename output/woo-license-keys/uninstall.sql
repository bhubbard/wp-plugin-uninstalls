-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_code', 'license_keys_response_errors_format', 'license_keys_enable_sku_val', 'license_keys_enable_domain_val', 'license_keys_override_headers', 'license_keys_header_allow_origin', 'license_keys_header_allow_methods', 'license_keys_header_allow_credentials', 'license_keys_include_user_email', 'license_keys_include_product_name', 'license_keys_include_product_sku', 'license_keys_api_handler', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_desktop', '_10q_lk', '_expire', '_expire_interval', '_expire_value', '_sold_individually', '_limit', '_limit_value', '_no_limit_dev', '_offline', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_desktop', '_10q_lk', '_expire', '_expire_interval', '_expire_value', '_sold_individually', '_limit', '_limit_value', '_no_limit_dev', '_offline', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_desktop', '_10q_lk', '_expire', '_expire_interval', '_expire_value', '_sold_individually', '_limit', '_limit_value', '_no_limit_dev', '_offline', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_desktop', '_10q_lk', '_expire', '_expire_interval', '_expire_value', '_sold_individually', '_limit', '_limit_value', '_no_limit_dev', '_offline', '_wp_attachment_metadata');

