-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpos_anylc_redirect', 'wpos_anylc_site_uid', 'wp_html5vp_install_notice', 'espbw_plugins_data');
DELETE FROM wp_options WHERE option_name LIKE 'wpos_anylc_optin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpvideo_video_mp4', '_wpvideo_video_wbbm', '_wpvideo_video_ogg', '_wpvideo_video_yt', '_wpvideo_video_vm');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpvideo_video_mp4', '_wpvideo_video_wbbm', '_wpvideo_video_ogg', '_wpvideo_video_yt', '_wpvideo_video_vm');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpvideo_video_mp4', '_wpvideo_video_wbbm', '_wpvideo_video_ogg', '_wpvideo_video_yt', '_wpvideo_video_vm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpvideo_video_mp4', '_wpvideo_video_wbbm', '_wpvideo_video_ogg', '_wpvideo_video_yt', '_wpvideo_video_vm');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_mp4';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_mp4';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_mp4';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_mp4';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_wbbm';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_wbbm';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_wbbm';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_wbbm';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_ogg';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_ogg';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_ogg';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_ogg';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_yt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_yt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_yt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_yt';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_vm';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_vm';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_vm';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_vm';

