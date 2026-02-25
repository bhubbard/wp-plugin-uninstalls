-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('axesweb_activated', 'axesweb_verify_issued_at', 'axesweb_verify_ttl', 'axesweb_key_last4', 'axesweb_api_key_enc', 'axesweb_a11y_api_key', 'axesweb_a11y_account_first_name', 'axesweb_a11y_account_last_name', 'axesweb_a11y_declaration_page_id', 'axesweb_a11y_feedback_enabled', 'axesweb_a11y_feedback_email', 'axesweb_a11y_widget_position', 'axesweb_a11y_widget_theme', 'axesweb_a11y_declaration_url');

