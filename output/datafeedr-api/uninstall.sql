-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dfrapi_account', 'dfrapi_networks', 'dfrapi_merchants', 'dfrapi_configuration', 'dfrapi_transient_whitelist', 'dfrapi_product_networks', 'dfrapi_coupon_networks', 'dfrapi_version', 'dfrapi_usage_notification_tracker');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_owner_datafeedr');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_owner_datafeedr');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_owner_datafeedr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_owner_datafeedr');

