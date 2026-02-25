-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_post_blocks', 'post_blocks_css', 'post_blocks_remove_css', 'post_blocks_future_posts', 'post_blocks_date_one', 'post_blocks_date_one_inactive', 'post_blocks_date_two', 'post_blocks_date_two_inactive');

