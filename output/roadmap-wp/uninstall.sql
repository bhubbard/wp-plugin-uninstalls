-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_roadmap_settings', 'wp_roadmap_custom_taxonomies', 'wp_roadmap_ideas_shortcode_loaded', 'wp_roadmap_new_idea_shortcode_loaded', 'wp_roadmap_roadmap_shortcode_loaded');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('idea_votes', '_created_by_my_plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('idea_votes', '_created_by_my_plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('idea_votes', '_created_by_my_plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('idea_votes', '_created_by_my_plugin');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'voted_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'voted_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'voted_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'voted_%';

