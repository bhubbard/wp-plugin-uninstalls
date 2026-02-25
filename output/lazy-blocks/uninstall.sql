-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'lzb_db_version', 'lazy_blocks_deactivated_notice_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lzb_template_data', '_lzb_template_blocks', '_lzb_template_convert_blocks_to_content', '_lzb_template_lock', '_lzb_template_post_types', 'lazyblocks_code_use_php', 'lazyblocks_code_output_method', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('lzb_template_data', '_lzb_template_blocks', '_lzb_template_convert_blocks_to_content', '_lzb_template_lock', '_lzb_template_post_types', 'lazyblocks_code_use_php', 'lazyblocks_code_output_method', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('lzb_template_data', '_lzb_template_blocks', '_lzb_template_convert_blocks_to_content', '_lzb_template_lock', '_lzb_template_post_types', 'lazyblocks_code_use_php', 'lazyblocks_code_output_method', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lzb_template_data', '_lzb_template_blocks', '_lzb_template_convert_blocks_to_content', '_lzb_template_lock', '_lzb_template_post_types', 'lazyblocks_code_use_php', 'lazyblocks_code_output_method', '_wp_attachment_image_alt');

