-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simple_short_content', '_simple_author', '_simple_pub_cal', '_simple_pub_cal_man', '_listing_image_id_750_350', '_listing_image_id_740_360');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simple_short_content', '_simple_author', '_simple_pub_cal', '_simple_pub_cal_man', '_listing_image_id_750_350', '_listing_image_id_740_360');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simple_short_content', '_simple_author', '_simple_pub_cal', '_simple_pub_cal_man', '_listing_image_id_750_350', '_listing_image_id_740_360');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simple_short_content', '_simple_author', '_simple_pub_cal', '_simple_pub_cal_man', '_listing_image_id_750_350', '_listing_image_id_740_360');

