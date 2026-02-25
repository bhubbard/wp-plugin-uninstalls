-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reword_plugin_version', 'reword_reports_min', 'reword_icon_pos', 'reword_notice_banner', 'reword_email_new', 'reword_access_cap', 'reword_send_stats', 'reword_banner_pos');

