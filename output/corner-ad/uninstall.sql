-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CORNER_AD_PLUGIN_VERSION', 'corner_ad_analytics', 'corner_ad_analytics_tracking_id', 'corner_ad_default_ad', 'corner_ad_random_ad', 'corner_ad_context', 'corner_ad_posttypes');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

