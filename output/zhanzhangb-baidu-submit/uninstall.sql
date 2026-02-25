-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zhanzhangb_baidu_token', 'zhanzhangb_baidu_realtime_token', 'zhanzhangb_baidu_check', 'zhanzhangb_baidu_custom_post_types', 'zhanzhangb_baidu_set_time', 'zhanzhangb_baidu_submit_number', 'zhanzhangb_baidu_submissions', 'zhanzhangb_baidu_realtime_number', 'zhanzhangb_baidu_realtime_date', 'zhanzhangb_baidu_push');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description');

