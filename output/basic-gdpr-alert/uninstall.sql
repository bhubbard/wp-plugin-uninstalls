-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_gdpr_alert_content', 'basic_gdpr_alert_button_text', 'basic_gdpr_alert_bgColor', 'basic_gdpr_alert_textColor', 'basic_gdpr_alert_zindex', 'basic_gdpr_alert_fontSize', 'basic_gdpr_alert_width');

