-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lryg_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_desc', 'video_url', 'custom_element_grid_quality_meta_box', 'radio_similiar', 'radio_controles', 'radio_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_desc', 'video_url', 'custom_element_grid_quality_meta_box', 'radio_similiar', 'radio_controles', 'radio_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_desc', 'video_url', 'custom_element_grid_quality_meta_box', 'radio_similiar', 'radio_controles', 'radio_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_desc', 'video_url', 'custom_element_grid_quality_meta_box', 'radio_similiar', 'radio_controles', 'radio_title');

