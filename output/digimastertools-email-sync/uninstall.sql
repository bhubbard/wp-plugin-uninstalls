-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmwkti_username', 'dmwkti_password', 'dmwkti_tag_category', 'dmwkti_tag_product_name', 'dmwkti_global_tag', 'dmwkti_product', 'dmwkti_product_free', 'dm_email_sync_global_product_meta', 'dmwkti_checkbox_checkout_tag', 'dmwkti_optin', 'dmwkti_license', 'dmwkti_checkbox_checkout', 'dmwkti_checkbox_checkout_title', 'dmwkti_checkbox_checkout_position');
DELETE FROM wp_options WHERE option_name LIKE 'dmwkti_global_tag_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dmwkti_product_settings', 'dm_email_sync_product_meta', 'dm_email_sync_coupon_tag');
DELETE FROM wp_usermeta WHERE meta_key IN ('dmwkti_product_settings', 'dm_email_sync_product_meta', 'dm_email_sync_coupon_tag');
DELETE FROM wp_termmeta WHERE meta_key IN ('dmwkti_product_settings', 'dm_email_sync_product_meta', 'dm_email_sync_coupon_tag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dmwkti_product_settings', 'dm_email_sync_product_meta', 'dm_email_sync_coupon_tag');

