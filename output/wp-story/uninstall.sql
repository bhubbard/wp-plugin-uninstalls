-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_story');
DELETE FROM wp_options WHERE option_name LIKE '%_stories';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_story_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_story_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_story_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_story_items');

