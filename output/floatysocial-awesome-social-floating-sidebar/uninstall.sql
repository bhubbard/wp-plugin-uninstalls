-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crfs_facebook_url', 'crfs_instagram_url', 'crfs_twitter_url', 'crfs_linkedin_url', 'crfs_youtube_url', 'crfs_rss_url', 'crfs_pinterest_url', 'crfs_behance_url', 'crfs_github_url', 'crfs_reddit_url', 'crfs_stackoverflow_url', 'crfs_tumblr_url', 'crfs_vine_url', 'crfs_primary_color', 'crfs_secondary_color', 'crfs_position');

