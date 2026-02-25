-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s22survey_widget_title', 's22survey_dofollow', 's22survey_disable_default_style');

