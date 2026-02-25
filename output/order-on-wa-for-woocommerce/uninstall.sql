-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wowp_activation_redirect', 'wowp_phone_number', 'wowp_button_label');

