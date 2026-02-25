-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idivi_post_settings_dot');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_idivi_post_layout', '_idivi_product_layout', '_et_pb_page_layout', '_idivi_page_dot_nav', '_idivi_post_dot_nav', '_idivi_project_dot_nav', '_idivi_product_dot_nav', '_et_pb_side_nav', '_idivi_page_hide_before_scroll', '_idivi_post_hide_before_scroll', '_idivi_project_hide_before_scroll', '_idivi_product_hide_before_scroll', '_et_pb_post_hide_nav', '_idivi_post_show_title', '_et_pb_show_title', '_idivi_project_nav', '_et_pb_project_nav');
DELETE FROM wp_usermeta WHERE meta_key IN ('_idivi_post_layout', '_idivi_product_layout', '_et_pb_page_layout', '_idivi_page_dot_nav', '_idivi_post_dot_nav', '_idivi_project_dot_nav', '_idivi_product_dot_nav', '_et_pb_side_nav', '_idivi_page_hide_before_scroll', '_idivi_post_hide_before_scroll', '_idivi_project_hide_before_scroll', '_idivi_product_hide_before_scroll', '_et_pb_post_hide_nav', '_idivi_post_show_title', '_et_pb_show_title', '_idivi_project_nav', '_et_pb_project_nav');
DELETE FROM wp_termmeta WHERE meta_key IN ('_idivi_post_layout', '_idivi_product_layout', '_et_pb_page_layout', '_idivi_page_dot_nav', '_idivi_post_dot_nav', '_idivi_project_dot_nav', '_idivi_product_dot_nav', '_et_pb_side_nav', '_idivi_page_hide_before_scroll', '_idivi_post_hide_before_scroll', '_idivi_project_hide_before_scroll', '_idivi_product_hide_before_scroll', '_et_pb_post_hide_nav', '_idivi_post_show_title', '_et_pb_show_title', '_idivi_project_nav', '_et_pb_project_nav');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_idivi_post_layout', '_idivi_product_layout', '_et_pb_page_layout', '_idivi_page_dot_nav', '_idivi_post_dot_nav', '_idivi_project_dot_nav', '_idivi_product_dot_nav', '_et_pb_side_nav', '_idivi_page_hide_before_scroll', '_idivi_post_hide_before_scroll', '_idivi_project_hide_before_scroll', '_idivi_product_hide_before_scroll', '_et_pb_post_hide_nav', '_idivi_post_show_title', '_et_pb_show_title', '_idivi_project_nav', '_et_pb_project_nav');

