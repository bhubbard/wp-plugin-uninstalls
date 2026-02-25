-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_element_grid_class_meta_box_doc_icon_new_class', 'custom_element_grid_class_meta_box_kb_icon_new_class', 'custom_element_grid_class_meta_box_desc', 'custom_element_grid_class_meta_box_kb_desc', '_thumbs_rating_up', '_thumbs_rating_down');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_element_grid_class_meta_box_doc_icon_new_class', 'custom_element_grid_class_meta_box_kb_icon_new_class', 'custom_element_grid_class_meta_box_desc', 'custom_element_grid_class_meta_box_kb_desc', '_thumbs_rating_up', '_thumbs_rating_down');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_element_grid_class_meta_box_doc_icon_new_class', 'custom_element_grid_class_meta_box_kb_icon_new_class', 'custom_element_grid_class_meta_box_desc', 'custom_element_grid_class_meta_box_kb_desc', '_thumbs_rating_up', '_thumbs_rating_down');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_element_grid_class_meta_box_doc_icon_new_class', 'custom_element_grid_class_meta_box_kb_icon_new_class', 'custom_element_grid_class_meta_box_desc', 'custom_element_grid_class_meta_box_kb_desc', '_thumbs_rating_up', '_thumbs_rating_down');

