-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('watchful_app_settings_changed_files', 'watchful_changed_files_do_activation_redirect');

