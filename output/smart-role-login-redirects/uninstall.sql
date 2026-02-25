-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srlr_role_redirects', 'srlr_activation_notice', 'srlr_settings_saved');

