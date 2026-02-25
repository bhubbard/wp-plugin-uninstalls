-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpfwe_filter_query', 'bpfwe_filter_post_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_id_list', 'bpfwe_swatches_type', 'bpfwe_swatches_color', 'bpfwe_swatches_image', 'bpfwe_swatches_button_text', 'bpfwe_swatches_group_text', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_id_list', 'bpfwe_swatches_type', 'bpfwe_swatches_color', 'bpfwe_swatches_image', 'bpfwe_swatches_button_text', 'bpfwe_swatches_group_text', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_id_list', 'bpfwe_swatches_type', 'bpfwe_swatches_color', 'bpfwe_swatches_image', 'bpfwe_swatches_button_text', 'bpfwe_swatches_group_text', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_id_list', 'bpfwe_swatches_type', 'bpfwe_swatches_color', 'bpfwe_swatches_image', 'bpfwe_swatches_button_text', 'bpfwe_swatches_group_text', 'thumbnail_id', '_wp_attachment_image_alt');

