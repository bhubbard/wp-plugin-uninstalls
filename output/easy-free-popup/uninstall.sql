-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('efp_run_days', 'efp_run_after_time', 'efp_run_after_ms', 'efp_run_after_scrolling', 'efp_run_after_scroll_percent', 'efp_modal_header', 'efp_modal_content', 'efp_modal_facebook_link', 'efp_modal_twitter_link', 'efp_modal_instagram_link', 'efp_modal_linkedin_link', 'efp_modal_youtube_link', 'efp_modal_snapchat_link', 'efp_modal_footer');

