-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcs_request_divisor', 'gcs_social', 'gcs_themify', 'gcs_3d_chart', 'facebook_referer', 'twitter_referer', 'google_referer', 'linkedin_referer', 'pinterest_referer', 'scoop_referer', 'qzone_referer', 'weibo_referer', 'vk_referer', 'gcs_personal_referers');
DELETE FROM wp_options WHERE option_name LIKE '%_referer';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gcs_hit', 'gcs_ip', 'gcs_total_known', 'gcs_total_unknown', 'gcs_total_known_disconnected', 'gcs_internal', 'gcs_referer_home', 'gcs_sticky_home', 'gcs_total_queries', 'gcs_total_memory');
DELETE FROM wp_usermeta WHERE meta_key IN ('gcs_hit', 'gcs_ip', 'gcs_total_known', 'gcs_total_unknown', 'gcs_total_known_disconnected', 'gcs_internal', 'gcs_referer_home', 'gcs_sticky_home', 'gcs_total_queries', 'gcs_total_memory');
DELETE FROM wp_termmeta WHERE meta_key IN ('gcs_hit', 'gcs_ip', 'gcs_total_known', 'gcs_total_unknown', 'gcs_total_known_disconnected', 'gcs_internal', 'gcs_referer_home', 'gcs_sticky_home', 'gcs_total_queries', 'gcs_total_memory');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gcs_hit', 'gcs_ip', 'gcs_total_known', 'gcs_total_unknown', 'gcs_total_known_disconnected', 'gcs_internal', 'gcs_referer_home', 'gcs_sticky_home', 'gcs_total_queries', 'gcs_total_memory');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_total_known_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_total_known_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_total_known_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_total_known_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_total_unknown_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_total_unknown_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_total_unknown_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_total_unknown_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_social-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_social-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_social-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_social-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_organics-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_organics-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_organics-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_organics-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_category_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_browser_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_browser_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_browser_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_browser_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%';

