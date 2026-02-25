-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_planner_providers');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_social_planner_tasks', '_social_planner_results');
DELETE FROM wp_usermeta WHERE meta_key IN ('_social_planner_tasks', '_social_planner_results');
DELETE FROM wp_termmeta WHERE meta_key IN ('_social_planner_tasks', '_social_planner_results');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_social_planner_tasks', '_social_planner_results');

