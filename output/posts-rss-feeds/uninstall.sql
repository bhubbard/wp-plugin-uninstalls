-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_type_to_feed', 'post_cont_in_feed', 'rss_language');

