-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloudimage_new_version', 'cloudimage', 'cloudimage_token_cname', 'cloudimage_use_origin_url', 'cloudimage_lazy_loading', 'cloudimage_ignore_svg', 'cloudimage_prevent_image_upsize', 'cloudimage_image_quality', 'cloudimage_maximum_pixel_ratio', 'cloudimage_remove_v7', 'cloudimage_image_size_attributes', 'cloudimage_custom_function', 'cloudimage_custom_library', 'cloudimage_skip_classes', 'cloudimage_skip_files', 'cloudimage_local_javascript_libraries', 'cloudimage_standard_mode', 'cloudimage_url_signature', 'cloudimage_enable_srcset', 'cloudimage_srcset_widths');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

