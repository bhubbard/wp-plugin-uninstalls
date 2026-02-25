-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mail2many_api_key', 'mail2many_api_server', 'mail2many_form_privacy_text');

