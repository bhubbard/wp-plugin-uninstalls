-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storymap_pro_stories_db_version', 'storymap_pro_example_db_version', 'storymap_pro_options');

