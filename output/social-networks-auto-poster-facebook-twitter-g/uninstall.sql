-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__plugins_cache_200', '__plugins_cache_201', '__nxsuid', 'NXS_cronCheck', 'nxs_nts', 'nxsSNAPNetworks', 'NS_SNAutoPoster', 'nxsSNAPOptions', 'nxs-upg200-notice-dismissed', '_nxs_aListV4', 'nxs_lBckTime', 'nxsSNAPNetworks_bck4', 'nxsSNAPOptions_bck4', 'nxs_contCron', 'nxs_v4APIMn', 'nxs_last_nxs_cron', '_nxs_tp', '_nxs_v5b', '__plugins_cache_242', '__plugins_cache_244', 'cron', 'nxs_cronLastCommentsCheck', 'nxs_log_db_table_version', 'nxs_query_db_table_version', 'NSX_LogToEmail', 'NS_SNriPosts');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nxs_rpstr', 'nxs_rpstr_stats', 'nxs_rpstr_data', '_snapPHST', 'snap_isAutoPosted', '_snap_forceSURL', 'snap_MYURL', 'snapEdIT', '_nxs_snap_data', '_nxs_slinks', 'snap_MYSURL', 'snapFB', 'snapTW', '_bbp_anonymous_name', '_bbp_forum_id', '_bbp_anonymous_email', '_bbp_anonymous_website', '_bbp_topic_id', 'snapImportedFBCommentsNXAPI', 'snapImportedFBComments', '_aioseop_description', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_metadesc', 'snapImportedComments', 'snapWL');
DELETE FROM wp_usermeta WHERE meta_key IN ('nxs_rpstr', 'nxs_rpstr_stats', 'nxs_rpstr_data', '_snapPHST', 'snap_isAutoPosted', '_snap_forceSURL', 'snap_MYURL', 'snapEdIT', '_nxs_snap_data', '_nxs_slinks', 'snap_MYSURL', 'snapFB', 'snapTW', '_bbp_anonymous_name', '_bbp_forum_id', '_bbp_anonymous_email', '_bbp_anonymous_website', '_bbp_topic_id', 'snapImportedFBCommentsNXAPI', 'snapImportedFBComments', '_aioseop_description', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_metadesc', 'snapImportedComments', 'snapWL');
DELETE FROM wp_termmeta WHERE meta_key IN ('nxs_rpstr', 'nxs_rpstr_stats', 'nxs_rpstr_data', '_snapPHST', 'snap_isAutoPosted', '_snap_forceSURL', 'snap_MYURL', 'snapEdIT', '_nxs_snap_data', '_nxs_slinks', 'snap_MYSURL', 'snapFB', 'snapTW', '_bbp_anonymous_name', '_bbp_forum_id', '_bbp_anonymous_email', '_bbp_anonymous_website', '_bbp_topic_id', 'snapImportedFBCommentsNXAPI', 'snapImportedFBComments', '_aioseop_description', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_metadesc', 'snapImportedComments', 'snapWL');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nxs_rpstr', 'nxs_rpstr_stats', 'nxs_rpstr_data', '_snapPHST', 'snap_isAutoPosted', '_snap_forceSURL', 'snap_MYURL', 'snapEdIT', '_nxs_snap_data', '_nxs_slinks', 'snap_MYSURL', 'snapFB', 'snapTW', '_bbp_anonymous_name', '_bbp_forum_id', '_bbp_anonymous_email', '_bbp_anonymous_website', '_bbp_topic_id', 'snapImportedFBCommentsNXAPI', 'snapImportedFBComments', '_aioseop_description', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_metadesc', 'snapImportedComments', 'snapWL');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'snap_isRpstd%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'snap_isRpstd%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'snap_isRpstd%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'snap_isRpstd%';

