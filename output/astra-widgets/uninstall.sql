-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_astra-widget-social-profiles', 'widget_astra-widget-list-icons', 'bsf_analytics_track');
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

