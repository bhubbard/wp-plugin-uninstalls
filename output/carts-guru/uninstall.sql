-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartsguru_db_version', 'carts_guru_feature_facebook', 'carts_guru_feature_fbm', 'carts_guru_feature_ci', 'carts_guru_facebook_catalogId', 'carts_guru_facebook_pixel', 'carts_guru_tracker_url', 'carts_guru_facebook_pageId', 'carts_guru_facebook_appId', 'carts_guru_feature_widgets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_after_tax', 'free_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_after_tax', 'free_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_after_tax', 'free_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_after_tax', 'free_shipping');

