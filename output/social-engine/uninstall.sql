-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE 'sclegn_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sclegn_post_link', 'sclegn_thumbnails', 'sclegn_service_type', 'sclegn_account_id', 'sclegn_service_id', 'sclegn_posted_id', 'sclegn_post_error', 'sclegn_related_postId', 'sclegn_posts', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('sclegn_post_link', 'sclegn_thumbnails', 'sclegn_service_type', 'sclegn_account_id', 'sclegn_service_id', 'sclegn_posted_id', 'sclegn_post_error', 'sclegn_related_postId', 'sclegn_posts', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('sclegn_post_link', 'sclegn_thumbnails', 'sclegn_service_type', 'sclegn_account_id', 'sclegn_service_id', 'sclegn_posted_id', 'sclegn_post_error', 'sclegn_related_postId', 'sclegn_posts', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sclegn_post_link', 'sclegn_thumbnails', 'sclegn_service_type', 'sclegn_account_id', 'sclegn_service_id', 'sclegn_posted_id', 'sclegn_post_error', 'sclegn_related_postId', 'sclegn_posts', '_wp_attachment_image_alt');

