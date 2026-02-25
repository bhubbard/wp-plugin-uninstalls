-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_analytics_token', 'pa_google_token', 'analytify_widget_date_differ');

