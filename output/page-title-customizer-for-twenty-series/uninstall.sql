-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pt_title_css_value_all', 'pt_title_css_value_all_smart', 'pt_title_css_value_all_pc', 'pt_title_css_value_all2', 'pt_title_css_value_all_smart2', 'pt_title_css_value_all_pc2', 'pt_title_css_value_category', 'pt_title_css_value_category_smart', 'pt_title_css_value_category_pc', 'pt_title_css_value_category2', 'pt_title_css_value_category_smart2', 'pt_title_css_value_category_pc2', 'pt_title_css_value_post', 'pt_title_css_value_post_smart', 'pt_title_css_value_post_pc', 'pt_title_css_value_post2', 'pt_title_css_value_post_smart2', 'pt_title_css_value_post_pc2', 'pt_title_css_category_all', 'pt_title_css_post_all', 'pt_title_css_category_all2', 'pt_title_css_post_all2');

