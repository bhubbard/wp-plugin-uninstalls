-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slider_templates_logged_in', 'slider_templates_is_premium', 'slider_templates_email', 'slider_templates_connection_agree', 'slider_templates_password', 'slider_templates_all_templates', 'slider_templates_download_history');

