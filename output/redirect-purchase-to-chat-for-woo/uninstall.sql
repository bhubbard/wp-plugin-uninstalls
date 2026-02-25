-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpwpp_enabled', 'rpwpp_phone_number', 'rpwpp_custom_message', 'rpwpp_button_text');

