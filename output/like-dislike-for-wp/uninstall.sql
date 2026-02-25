-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('like_dislike_vote_tracking_enabled', 'like_dislike_hide_dislike_btn', 'like_dislike_for_wp_db_version');

