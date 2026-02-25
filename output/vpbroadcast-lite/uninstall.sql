-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vp_bcl_broadcast_status', 'vp_bcl_broadcast_date', 'vp_bcl_broadcast_time', 'vp_bcl_broadcast_timezone', 'vp_bcl_broadcast_place', 'vp_bcl_broadcast_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('vp_bcl_broadcast_status', 'vp_bcl_broadcast_date', 'vp_bcl_broadcast_time', 'vp_bcl_broadcast_timezone', 'vp_bcl_broadcast_place', 'vp_bcl_broadcast_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('vp_bcl_broadcast_status', 'vp_bcl_broadcast_date', 'vp_bcl_broadcast_time', 'vp_bcl_broadcast_timezone', 'vp_bcl_broadcast_place', 'vp_bcl_broadcast_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vp_bcl_broadcast_status', 'vp_bcl_broadcast_date', 'vp_bcl_broadcast_time', 'vp_bcl_broadcast_timezone', 'vp_bcl_broadcast_place', 'vp_bcl_broadcast_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%team_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%team_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%team_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%team_1';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%team_1_score';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%team_1_score';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%team_1_score';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%team_1_score';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%team_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%team_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%team_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%team_2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%team_2_score';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%team_2_score';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%team_2_score';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%team_2_score';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%refresh';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%refresh';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%refresh';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%refresh';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%style';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%style';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%style';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%style';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%interval';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%interval';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%interval';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%interval';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%content';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%content';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%content';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%content';

