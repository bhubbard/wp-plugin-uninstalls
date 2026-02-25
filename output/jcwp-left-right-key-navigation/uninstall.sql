-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorglrkn_plugin', 'jcorglrkn_theme', 'jcorglrkn_next_post_label', 'jcorglrkn_previous_post_label', 'jcorglrkn_posts_same_category', 'jcorglrkn_exclude_categories', 'jcorglrkn_minimum_screen_width', 'jcorglrkn_linkback', 'jcorglrkn_linkback_text');

