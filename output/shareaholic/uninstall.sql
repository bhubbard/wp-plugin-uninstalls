-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Plugin_Shareaholic', 'shareaholic_has_accepted_tos', 'shareaholic_settings', 'shareaholic_activate_timestamp', 'shareaholic_review_dismiss', 'SexyBookmarks', 'ShareaholicClassicBookmarks', 'ShareaholicRecommendations', 'ShareaholicTopBar', 'ShareaholicAnalytics', 'ShareaholicTopbar', 'shr_reportupgrade', 'SHRSBvNum', 'SHRSB_apikey', 'SEXY_SPONSORS', 'SHRSB_DefaultSprite', 'SHRSB_CustomSprite', 'SexyCustomSprite', 'SHRSBvNUM', 'shareaholic_get_or_create_api_key', 'shareaholic_perform_update', 'active_sitewide_plugins', '_shr_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'shareaholic_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shareaholic_exclude_recommendations', 'shareaholic_disable_open_graph_tags', 'shareaholic_disable_share_buttons', 'shareaholic_disable_recommendations', '_aioseop_keywords', '_yoast_wpseo_focuskw', '_yoast_wpseo_metakeywords', '_amt_keywords', '_amt_news_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('shareaholic_exclude_recommendations', 'shareaholic_disable_open_graph_tags', 'shareaholic_disable_share_buttons', 'shareaholic_disable_recommendations', '_aioseop_keywords', '_yoast_wpseo_focuskw', '_yoast_wpseo_metakeywords', '_amt_keywords', '_amt_news_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('shareaholic_exclude_recommendations', 'shareaholic_disable_open_graph_tags', 'shareaholic_disable_share_buttons', 'shareaholic_disable_recommendations', '_aioseop_keywords', '_yoast_wpseo_focuskw', '_yoast_wpseo_metakeywords', '_amt_keywords', '_amt_news_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shareaholic_exclude_recommendations', 'shareaholic_disable_open_graph_tags', 'shareaholic_disable_share_buttons', 'shareaholic_disable_recommendations', '_aioseop_keywords', '_yoast_wpseo_focuskw', '_yoast_wpseo_metakeywords', '_amt_keywords', '_amt_news_keywords');

