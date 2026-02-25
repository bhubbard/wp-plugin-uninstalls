-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('welcome_popup_settings', 'welcome_popup_activation_date');

