-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('top_stories_settings', 'top_stories_facebook_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('top_stories_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('top_stories_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('top_stories_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('top_stories_count');

