-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oceanwp_ps_post_type', 'oceanwp_ps_style', 'oceanwp_ps_number', 'oceanwp_ps_number_per_slide', 'oceanwp_ps_include_cat', 'oceanwp_ps_exclude_cat', 'oceanwp_ps_space_between', 'oceanwp_ps_size', 'oceanwp_ps_img_width', 'oceanwp_ps_img_height', 'oceanwp_ps_speed', 'oceanwp_ps_order', 'oceanwp_ps_orderby', 'oceanwp_ps_more_text', 'oceanwp_ps_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('oceanwp_ps_post_type', 'oceanwp_ps_style', 'oceanwp_ps_number', 'oceanwp_ps_number_per_slide', 'oceanwp_ps_include_cat', 'oceanwp_ps_exclude_cat', 'oceanwp_ps_space_between', 'oceanwp_ps_size', 'oceanwp_ps_img_width', 'oceanwp_ps_img_height', 'oceanwp_ps_speed', 'oceanwp_ps_order', 'oceanwp_ps_orderby', 'oceanwp_ps_more_text', 'oceanwp_ps_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('oceanwp_ps_post_type', 'oceanwp_ps_style', 'oceanwp_ps_number', 'oceanwp_ps_number_per_slide', 'oceanwp_ps_include_cat', 'oceanwp_ps_exclude_cat', 'oceanwp_ps_space_between', 'oceanwp_ps_size', 'oceanwp_ps_img_width', 'oceanwp_ps_img_height', 'oceanwp_ps_speed', 'oceanwp_ps_order', 'oceanwp_ps_orderby', 'oceanwp_ps_more_text', 'oceanwp_ps_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oceanwp_ps_post_type', 'oceanwp_ps_style', 'oceanwp_ps_number', 'oceanwp_ps_number_per_slide', 'oceanwp_ps_include_cat', 'oceanwp_ps_exclude_cat', 'oceanwp_ps_space_between', 'oceanwp_ps_size', 'oceanwp_ps_img_width', 'oceanwp_ps_img_height', 'oceanwp_ps_speed', 'oceanwp_ps_order', 'oceanwp_ps_orderby', 'oceanwp_ps_more_text', 'oceanwp_ps_limit');

