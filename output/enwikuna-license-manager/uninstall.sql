-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_guest_checkout', 'woocommerce_enable_signup_and_login_from_checkout', 'active_sitewide_plugins', 'woocommerce_manage_stock', 'woocommerce_myaccount_licenses_endpoint', 'woocommerce_myaccount_view_license_endpoint', 'woocommerce_myaccount_validate_license_endpoint', 'woocommerce_email_footer_text', 'doing_cron');
DELETE FROM wp_options WHERE option_name LIKE 'elm_%';
DELETE FROM wp_options WHERE option_name LIKE 'elm_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elm_required_product_licenses_product_ids', '_elm_product_use_generator', '_elm_product_use_stock', '_elm_product_assigned_generator', '_elm_product_uuid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elm_required_product_licenses_product_ids', '_elm_product_use_generator', '_elm_product_use_stock', '_elm_product_assigned_generator', '_elm_product_uuid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elm_required_product_licenses_product_ids', '_elm_product_use_generator', '_elm_product_use_stock', '_elm_product_assigned_generator', '_elm_product_uuid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elm_required_product_licenses_product_ids', '_elm_product_use_generator', '_elm_product_use_stock', '_elm_product_assigned_generator', '_elm_product_uuid');

