-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', '_maxboxy_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mb_floatany', 'auto_loading', 'location', 'test_mode', '_mb_maxboxy_conversion', 'maxboxy_loaded_count', 'maxboxy_loaded_count_unique', 'maxboxy_views_count', 'maxboxy_views_count_unique', 'maxboxy_completed_goal', 'maxboxy_completed_goal_unique');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mb_floatany', 'auto_loading', 'location', 'test_mode', '_mb_maxboxy_conversion', 'maxboxy_loaded_count', 'maxboxy_loaded_count_unique', 'maxboxy_views_count', 'maxboxy_views_count_unique', 'maxboxy_completed_goal', 'maxboxy_completed_goal_unique');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mb_floatany', 'auto_loading', 'location', 'test_mode', '_mb_maxboxy_conversion', 'maxboxy_loaded_count', 'maxboxy_loaded_count_unique', 'maxboxy_views_count', 'maxboxy_views_count_unique', 'maxboxy_completed_goal', 'maxboxy_completed_goal_unique');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mb_floatany', 'auto_loading', 'location', 'test_mode', '_mb_maxboxy_conversion', 'maxboxy_loaded_count', 'maxboxy_loaded_count_unique', 'maxboxy_views_count', 'maxboxy_views_count_unique', 'maxboxy_completed_goal', 'maxboxy_completed_goal_unique');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

