-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zcum_analytics_table_checked', 'zcum_settings', 'zcum_version', 'zcum_dashboard_widget_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zcum_age_days', '_zcum_age_category', '_zcum_total_views', '_zcum_total_clicks', '_zcum_avg_time', '_zcum_engagement_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zcum_age_days', '_zcum_age_category', '_zcum_total_views', '_zcum_total_clicks', '_zcum_avg_time', '_zcum_engagement_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zcum_age_days', '_zcum_age_category', '_zcum_total_views', '_zcum_total_clicks', '_zcum_avg_time', '_zcum_engagement_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zcum_age_days', '_zcum_age_category', '_zcum_total_views', '_zcum_total_clicks', '_zcum_avg_time', '_zcum_engagement_score');

