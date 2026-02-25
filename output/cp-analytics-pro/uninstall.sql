-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_analytics_token', 'google_token', 'post_analytics_settings', 'post_analytics_access', 'disable_front', 'post_analytics_showguest', 'post_analytics_settings_back', 'post_analytics_access_back', 'webprofile', 'webPropertyId', 'data_dashboard', 'webprofile_url', 'tracking_code', 'analytics_code', 'welcome_message', 'graph', 'general', 'rtdata', 'countary', 'city', 'keywords', 'social', 'browser', 'referrers', 'osystem', 'mobile', 'page', 'itelecom', 'gcompletions');

