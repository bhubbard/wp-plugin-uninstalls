-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bt_post_type', 'bt_pagination', 'bt_comments_per_page', 'bt_exclude_post', 'biztech_sac_avatar', 'biztech_show_date', 'biztech_open_new_tab', 'biztech_comments_order', 'bt_display_filter', 'bt_show_post_link', 'bt_show_comment_link');

