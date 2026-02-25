-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remove_rsd_link', 'remove_wp_generator', 'remove_feed_links', 'remove_feed_links_extra', 'remove_index_rel_link', 'remove_wlwmanifest_link', 'remove_parent_post_rel_link', 'remove_start_post_rel_link', 'remove_adjacent_posts_rel_link', 'remove_wp_shortlink_wp_head');

