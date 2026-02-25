-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirect_txt_rules', 'redirect_txt_logs', 'redirect_txt_settings');

