#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__plugins_cache_200'
wp option delete '__plugins_cache_201'
wp option delete '__nxsuid'
wp option delete 'NXS_cronCheck'
wp option delete 'nxs_nts'
wp option delete 'nxsSNAPNetworks'
wp option delete 'NS_SNAutoPoster'
wp option delete 'nxsSNAPOptions'
wp option delete 'nxs-upg200-notice-dismissed'
wp option delete '_nxs_aListV4'
wp option delete 'nxs_lBckTime'
wp option delete 'nxsSNAPNetworks_bck4'
wp option delete 'nxsSNAPOptions_bck4'
wp option delete 'nxs_contCron'
wp option delete 'nxs_v4APIMn'
wp option delete 'nxs_last_nxs_cron'
wp option delete '_nxs_tp'
wp option delete '_nxs_v5b'
wp option delete '__plugins_cache_242'
wp option delete '__plugins_cache_244'
wp option delete 'cron'
wp option delete 'nxs_cronLastCommentsCheck'
wp option delete 'nxs_log_db_table_version'
wp option delete 'nxs_query_db_table_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'NSX_LogToEmail'
wp option delete 'NS_SNriPosts'

# Clear Cron Jobs
wp cron event delete 'nxs_hourly_event'
wp cron event delete 'nxs_querypost_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nxs_rpstr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nxs_rpstr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nxs_rpstr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nxs_rpstr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nxs_rpstr_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nxs_rpstr_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nxs_rpstr_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nxs_rpstr_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nxs_rpstr_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nxs_rpstr_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nxs_rpstr_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nxs_rpstr_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snapPHST'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snapPHST'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snapPHST'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snapPHST'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snap_isAutoPosted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snap_isAutoPosted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snap_isAutoPosted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snap_isAutoPosted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snap_forceSURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snap_forceSURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snap_forceSURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snap_forceSURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snap_MYURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snap_MYURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snap_MYURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snap_MYURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapEdIT'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapEdIT'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapEdIT'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapEdIT'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nxs_snap_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nxs_snap_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nxs_snap_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nxs_snap_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nxs_slinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nxs_slinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nxs_slinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nxs_slinks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'snap_isRpstd%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'snap_isRpstd%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'snap_isRpstd%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'snap_isRpstd%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snap_MYSURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snap_MYSURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snap_MYSURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snap_MYSURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapImportedFBCommentsNXAPI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapImportedFBCommentsNXAPI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapImportedFBCommentsNXAPI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapImportedFBCommentsNXAPI'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapImportedFBComments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapImportedFBComments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapImportedFBComments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapImportedFBComments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapImportedComments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapImportedComments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapImportedComments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapImportedComments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapWL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapWL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapWL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapWL'"
