-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duplicate_post_version', 'duplicate_post_show_notice', 'duplicate_post_copychildren', 'duplicate_post_copyattachments', 'duplicate_post_copycomments', 'duplicate_post_copytitle', 'duplicate_post_copydate', 'duplicate_post_copystatus', 'duplicate_post_copyslug', 'duplicate_post_copyexcerpt', 'duplicate_post_copycontent', 'duplicate_post_copythumbnail', 'duplicate_post_copytemplate', 'duplicate_post_copyformat', 'duplicate_post_copyauthor', 'duplicate_post_copypassword', 'duplicate_post_copymenuorder', 'duplicate_post_taxonomies_blacklist', 'duplicate_post_blacklist', 'duplicate_post_types_enabled', 'duplicate_post_show_original_column', 'duplicate_post_show_original_in_post_states', 'duplicate_post_show_original_meta_box', 'duplicate_post_show_link', 'duplicate_post_show_link_in', 'duplicate_post_title_prefix', 'duplicate_post_title_suffix', 'duplicate_post_increase_menu_order_by');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_dp_original');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_dp_original');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_dp_original');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_dp_original');

