-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zyflora_track_logged_in', 'zyflora_exclude_bots', 'zyflora_track_pages', 'zyflora_analytics_activated');
DELETE FROM wp_options WHERE option_name LIKE 'zyflora_total_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zyflora_views', '_zyflora_sessions', '_zyflora_views_direct', '_zyflora_sessions_direct', '_zyflora_views_unknown');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zyflora_views', '_zyflora_sessions', '_zyflora_views_direct', '_zyflora_sessions_direct', '_zyflora_views_unknown');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zyflora_views', '_zyflora_sessions', '_zyflora_views_direct', '_zyflora_sessions_direct', '_zyflora_views_unknown');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zyflora_views', '_zyflora_sessions', '_zyflora_views_direct', '_zyflora_sessions_direct', '_zyflora_views_unknown');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_zyflora_views_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_zyflora_views_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_zyflora_views_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_zyflora_views_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_zyflora_sessions_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_zyflora_sessions_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_zyflora_sessions_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_zyflora_sessions_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_direct';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_direct';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_direct';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_direct';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_other';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_other';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_other';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_other';

