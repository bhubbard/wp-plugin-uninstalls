-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('video_plylst_admin_notice', 'vpfy_reg_ytubapi_key', 'vpfy_vid_autoply', 'vpfy_vid_length', 'ytpp_controls');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customdata_group', '_utubeSliderRange');
DELETE FROM wp_usermeta WHERE meta_key IN ('customdata_group', '_utubeSliderRange');
DELETE FROM wp_termmeta WHERE meta_key IN ('customdata_group', '_utubeSliderRange');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customdata_group', '_utubeSliderRange');

