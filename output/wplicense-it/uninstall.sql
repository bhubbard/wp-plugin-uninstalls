-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplit-checkout-page', 'wplit-licenses-page', 'wplit-stripe-settings-test-mode', 'wplit-stripe-settings-live-pk', 'wplit-stripe-settings-live-sk', 'wplit-stripe-settings-test-pk', 'wplit-stripe-settings-test-sk', 'wplit_db_version', 'wplicense-it-api-rewrite-rules-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplit_expire', 'wplit_expire_time', 'wplit_product_price', 'wplit_product_name', 'wplit_product_version', 'wplit_product_file_upload', 'wplit_product_api_key', 'wplit_tested_wp_version', 'wplit_required_wp_version', 'wplit_product_description', 'file_dir_location', 'file_dir_path', 'file_name', 'wplit_product_banner_url', 'wplit_product_logo_url', 'wplit_product_logo', 'wplit_product_banner');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplit_expire', 'wplit_expire_time', 'wplit_product_price', 'wplit_product_name', 'wplit_product_version', 'wplit_product_file_upload', 'wplit_product_api_key', 'wplit_tested_wp_version', 'wplit_required_wp_version', 'wplit_product_description', 'file_dir_location', 'file_dir_path', 'file_name', 'wplit_product_banner_url', 'wplit_product_logo_url', 'wplit_product_logo', 'wplit_product_banner');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplit_expire', 'wplit_expire_time', 'wplit_product_price', 'wplit_product_name', 'wplit_product_version', 'wplit_product_file_upload', 'wplit_product_api_key', 'wplit_tested_wp_version', 'wplit_required_wp_version', 'wplit_product_description', 'file_dir_location', 'file_dir_path', 'file_name', 'wplit_product_banner_url', 'wplit_product_logo_url', 'wplit_product_logo', 'wplit_product_banner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplit_expire', 'wplit_expire_time', 'wplit_product_price', 'wplit_product_name', 'wplit_product_version', 'wplit_product_file_upload', 'wplit_product_api_key', 'wplit_tested_wp_version', 'wplit_required_wp_version', 'wplit_product_description', 'file_dir_location', 'file_dir_path', 'file_name', 'wplit_product_banner_url', 'wplit_product_logo_url', 'wplit_product_logo', 'wplit_product_banner');

