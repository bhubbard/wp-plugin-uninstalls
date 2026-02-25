-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PAWPY_popup_alert_display_news', 'PAWPY_popup_alert_display_color', 'PAWPY_popup_alert_post_type');

