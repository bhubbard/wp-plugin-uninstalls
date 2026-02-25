-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swr_sync_opt', 'swr_general_opt', 'swr_captcha_opt', 'swr_design_opt', 'swr_popup_review_opt', 'swr_order_product_review_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('swr_comment_id', 'swr_comment_images', '_wp_attachment_image_alt', 'rating', '_wp_trash_meta_status', '_swr_previous_status', 'swr_order_prod_review_id', '_wc_average_rating', 'swr_customer_prof_img', 'verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('swr_comment_id', 'swr_comment_images', '_wp_attachment_image_alt', 'rating', '_wp_trash_meta_status', '_swr_previous_status', 'swr_order_prod_review_id', '_wc_average_rating', 'swr_customer_prof_img', 'verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('swr_comment_id', 'swr_comment_images', '_wp_attachment_image_alt', 'rating', '_wp_trash_meta_status', '_swr_previous_status', 'swr_order_prod_review_id', '_wc_average_rating', 'swr_customer_prof_img', 'verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('swr_comment_id', 'swr_comment_images', '_wp_attachment_image_alt', 'rating', '_wp_trash_meta_status', '_swr_previous_status', 'swr_order_prod_review_id', '_wc_average_rating', 'swr_customer_prof_img', 'verified');

