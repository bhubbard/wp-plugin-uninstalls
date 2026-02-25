-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mt_posts_per_page', 'twiogle_make_no_follow', 'link_back_to_profile', 'remove_hashtags', 'twiogle_commenter_db_version');

