-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('key_field', 'login_field', 'app_field', 'password_field', 'default_voice_field', 'selector_field', 'exclude_selector_field');

