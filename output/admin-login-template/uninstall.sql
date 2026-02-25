-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alt_logo_url', 'alt_backlog_visibility', 'alt_template', 'alt_username', 'alt_logo_click_url', 'alt_password', 'alt_button', 'alt_remember_button', 'alt_lost_password', 'alt_success', 'alt_username_error', 'alt_password_error', 'alt_empty_username', 'alt_empty_password');

