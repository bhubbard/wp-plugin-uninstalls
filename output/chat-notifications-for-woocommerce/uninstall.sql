-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wafwc_send_to', 'wafwc_template_name', 'wafwc_template_language', 'wafwc_data_option', 'wafwc-wa-phone-id', 'wafwc-wa-token', 'wafwc-wa-id', 'wafwc-enable-prefix');

