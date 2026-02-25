-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instock_email_option_css', 'instock_email_alert_db_version', 'instock_email_option_sender', 'instock_email_option_from', 'instock_email_option_subject', 'instock_email_option_message', 'instock_email_option_error', 'instock_email_option_success', 'instock_email_option_placeholder', 'instock_email_option_submit', 'instock_email_option_shortcode');

