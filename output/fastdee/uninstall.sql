-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fd_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fd_coupon_lomadee_id', '_wp_attachment_image_alt', '_price', '_regular_price', '_product_url', '_fd_store_id', '_fd_offer_fastdee_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fd_coupon_lomadee_id', '_wp_attachment_image_alt', '_price', '_regular_price', '_product_url', '_fd_store_id', '_fd_offer_fastdee_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fd_coupon_lomadee_id', '_wp_attachment_image_alt', '_price', '_regular_price', '_product_url', '_fd_store_id', '_fd_offer_fastdee_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fd_coupon_lomadee_id', '_wp_attachment_image_alt', '_price', '_regular_price', '_product_url', '_fd_store_id', '_fd_offer_fastdee_id');

