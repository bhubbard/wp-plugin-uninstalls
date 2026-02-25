-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('challenge_registration_page_id', 'challenge_login_page_id', 'challenge_default_banar_img_id', 'challenge_default_thumbnail_img_id', 'challenge_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('challenge_start_time', 'challenge_end_time', 'first_name', 'last_name', 'challenge_archive_page_thumbnail_id', '_challenge_pricing', 'challenge_product_select', '_challenge_price', '_checkpoint_data', '_attached_challenge_id', 'enrolled_users', 'cart_added_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('challenge_start_time', 'challenge_end_time', 'first_name', 'last_name', 'challenge_archive_page_thumbnail_id', '_challenge_pricing', 'challenge_product_select', '_challenge_price', '_checkpoint_data', '_attached_challenge_id', 'enrolled_users', 'cart_added_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('challenge_start_time', 'challenge_end_time', 'first_name', 'last_name', 'challenge_archive_page_thumbnail_id', '_challenge_pricing', 'challenge_product_select', '_challenge_price', '_checkpoint_data', '_attached_challenge_id', 'enrolled_users', 'cart_added_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('challenge_start_time', 'challenge_end_time', 'first_name', 'last_name', 'challenge_archive_page_thumbnail_id', '_challenge_pricing', 'challenge_product_select', '_challenge_price', '_checkpoint_data', '_attached_challenge_id', 'enrolled_users', 'cart_added_product');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_user_image_attachment_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_user_image_attachment_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_user_image_attachment_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_user_image_attachment_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_purchased';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_purchased';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_purchased';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_purchased';

