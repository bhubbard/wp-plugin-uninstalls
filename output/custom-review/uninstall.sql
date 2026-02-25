-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zwk_review_image', 'zwk_edit_review_image', 'zwk_eidt_review_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zwk_image_url', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('zwk_image_url', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('zwk_image_url', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zwk_image_url', 'rating');

