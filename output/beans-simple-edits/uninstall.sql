-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beans_post_meta_above_content', 'beans_remove_post_meta_above_content_checkbox', 'beans_post_meta_below_content', 'beans_remove_post_meta_below_content_checkbox', 'beans_split_footer_left', 'beans_remove_split_footer_left_checkbox', 'beans_split_footer_right', 'beans_remove_split_footer_right_checkbox', 'beans_center_footer', 'beans_show_center_footer_checkbox');

