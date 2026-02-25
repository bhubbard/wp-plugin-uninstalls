-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbon_copy_version', 'carbon_copy_show_row', 'carbon_copy_show_submitbox', 'carbon_copy_show_original_column', 'carbon_copy_show_original_in_post_states', 'carbon_copy_show_original_meta_box', 'carbon_copy_copychildren', 'carbon_copy_copyattachments', 'carbon_copy_copycomments', 'carbon_copy_copy_user_level', 'carbon_copy_copytitle', 'carbon_copy_copydate', 'carbon_copy_copystatus', 'carbon_copy_copyslug', 'carbon_copy_copyexcerpt', 'carbon_copy_copycontent', 'carbon_copy_copythumbnail', 'carbon_copy_copytemplate', 'carbon_copy_copyformat', 'carbon_copy_copyauthor', 'carbon_copy_copypassword', 'carbon_copy_copymenuorder', 'carbon_copy_widgets_classic', 'carbon_copy_widgets', 'carbon_copy_menus', 'carbon_copy_types_enabled', 'carbon_copy_taxonomies_blacklist', 'carbon_copy_blacklist', 'carbon_copy_show_adminbar', 'carbon_copy_show_bulkactions', 'carbon_copy_cleaner', 'carbon_copy_admin_user_level', 'carbon_copy_create_user_level', 'carbon_copy_view_user_level', 'carbon_copy_title_prefix', 'carbon_copy_title_suffix', 'carbon_copy_increase_menu_order_by', 'carbon_copy_roles', 'carbon_copy_blacklist ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cc_original', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cc_original', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cc_original', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cc_original', '_wp_attachment_image_alt');

