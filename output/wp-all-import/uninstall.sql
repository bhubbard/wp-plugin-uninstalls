-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpai_parser_type', 'wpai_parser_type_0', 'default_product_cat', 'post_count', 'acf_addon_notice_ignore', 'wp_all_export_notice_ignore', 'active_sitewide_plugins', 'pmxi_is_migrated', 'wpai_modal_review_dismissed', 'wpai_modal_review_dismissed_time', 'wpai_modal_review_dismissed_modals', 'wpai_modal_review_dismissed_times');
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_taxonomies_hierarchy_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_comments_hierarchy_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_posts_hierarchy_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_comment_posts_%';
DELETE FROM wp_options WHERE option_name LIKE '_wp_all_import_functions_hash_%';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_';
DELETE FROM wp_options WHERE option_name LIKE 'wpai_parser_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'default_term_%';
DELETE FROM wp_options WHERE option_name LIKE '%_Options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status', '_stock', 'thumbnail_id', 'nickname', 'description', '_wp_old_slug', '_wp_page_template', '_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status', '_stock', 'thumbnail_id', 'nickname', 'description', '_wp_old_slug', '_wp_page_template', '_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status', '_stock', 'thumbnail_id', 'nickname', 'description', '_wp_old_slug', '_wp_page_template', '_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status', '_stock', 'thumbnail_id', 'nickname', 'description', '_wp_old_slug', '_wp_page_template', '_wp_attachment_image_alt', '_product_image_gallery');

