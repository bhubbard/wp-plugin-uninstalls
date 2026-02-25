-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('decide_type_of_id', 'postIdsSaved', 'imageDetails', 'is_archieve', 'res_post_type', 'background_color', 'text_color', 'height', 'width', 'select_width_management', 'layout', 'content_width', 'opacity', 'display_Image', 'select_navigation_arrow');
DELETE FROM wp_usermeta WHERE meta_key IN ('decide_type_of_id', 'postIdsSaved', 'imageDetails', 'is_archieve', 'res_post_type', 'background_color', 'text_color', 'height', 'width', 'select_width_management', 'layout', 'content_width', 'opacity', 'display_Image', 'select_navigation_arrow');
DELETE FROM wp_termmeta WHERE meta_key IN ('decide_type_of_id', 'postIdsSaved', 'imageDetails', 'is_archieve', 'res_post_type', 'background_color', 'text_color', 'height', 'width', 'select_width_management', 'layout', 'content_width', 'opacity', 'display_Image', 'select_navigation_arrow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('decide_type_of_id', 'postIdsSaved', 'imageDetails', 'is_archieve', 'res_post_type', 'background_color', 'text_color', 'height', 'width', 'select_width_management', 'layout', 'content_width', 'opacity', 'display_Image', 'select_navigation_arrow');

