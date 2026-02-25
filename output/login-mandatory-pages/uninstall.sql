-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selected_pages', 'lr_message', 'lr_button', 'login_restrictions_settings');

