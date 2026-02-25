-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clean_up_rsd_link', 'clean_up_wlwmanifest_link', 'clean_up_wp_generator', 'clean_up_start_post_rel_link', 'clean_up_index_rel_link', 'clean_up_adjacent_posts_rel_link', 'clean_up_feed_links', 'clean_up_feed_links_extra', 'clean_up_feeds', 'easy_excerpt');

