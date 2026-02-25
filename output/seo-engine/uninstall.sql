-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwseo_title_hashes', 'seo_engine_title_hashes', 'seo_engine_searches', 'mwseo_searches', 'mwseo_options', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwseo_status', '_mwseo_analysis', '_mwseo_overall', '_mwseo_updated', '_mwseo_score', '_mwseo_message', '_mwseo_codes', '_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_mwseo_keywords', '_mwseo_ignored_tests', '_mwseo_issues_fixed', '_mwseo_analysis_session', '_mwseo_title', '_mwseo_excerpt', '_mwseo_robots', '_mwseo_canonical');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwseo_status', '_mwseo_analysis', '_mwseo_overall', '_mwseo_updated', '_mwseo_score', '_mwseo_message', '_mwseo_codes', '_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_mwseo_keywords', '_mwseo_ignored_tests', '_mwseo_issues_fixed', '_mwseo_analysis_session', '_mwseo_title', '_mwseo_excerpt', '_mwseo_robots', '_mwseo_canonical');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwseo_status', '_mwseo_analysis', '_mwseo_overall', '_mwseo_updated', '_mwseo_score', '_mwseo_message', '_mwseo_codes', '_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_mwseo_keywords', '_mwseo_ignored_tests', '_mwseo_issues_fixed', '_mwseo_analysis_session', '_mwseo_title', '_mwseo_excerpt', '_mwseo_robots', '_mwseo_canonical');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwseo_status', '_mwseo_analysis', '_mwseo_overall', '_mwseo_updated', '_mwseo_score', '_mwseo_message', '_mwseo_codes', '_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_mwseo_keywords', '_mwseo_ignored_tests', '_mwseo_issues_fixed', '_mwseo_analysis_session', '_mwseo_title', '_mwseo_excerpt', '_mwseo_robots', '_mwseo_canonical');

