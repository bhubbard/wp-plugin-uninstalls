-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jgwa_inc_loggedIn', 'avea_display_annotations', 'jgwa_website_analytics_date', 'jgwa_version', 'jgwa_website_analytics_date_custom', 'jgwa_notice_message');

