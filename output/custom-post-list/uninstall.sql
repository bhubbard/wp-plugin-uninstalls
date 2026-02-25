-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_post_list_post_type', 'custom_post_list_show_date', 'custom_post_list_show_featured_image', 'custom_post_list_show_pagination', 'custom_post_list_display_author', 'custom_post_list_show_no_of_posts');

