-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('facebook', 'twitter', 'googleplus', 'youtube', 'pinterest', 'linkedin', 'tumblr', 'instagram', 'flickr', 'vine', 'soundcloud', 'github', 'dribble', 'behance', 'rss', 'alignment', 'colour');

