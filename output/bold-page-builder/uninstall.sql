-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bt_bb_settings', 'bt_bb_custom_css', 'bt_bb_mapping_secondary');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bt_bb_rating_notice_ignore', 'bt_bb_rating_notice_enable', 'bt_bb_plugin_notice_ignore', '_my_meta_value_key', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('bt_bb_rating_notice_ignore', 'bt_bb_rating_notice_enable', 'bt_bb_plugin_notice_ignore', '_my_meta_value_key', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('bt_bb_rating_notice_ignore', 'bt_bb_rating_notice_enable', 'bt_bb_plugin_notice_ignore', '_my_meta_value_key', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bt_bb_rating_notice_ignore', 'bt_bb_rating_notice_enable', 'bt_bb_plugin_notice_ignore', '_my_meta_value_key', '_wp_attachment_image_alt');

