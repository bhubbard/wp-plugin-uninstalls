-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('docodoco_country_redirection_common_settings', 'docodoco_country_redirection_redirect_settings');

