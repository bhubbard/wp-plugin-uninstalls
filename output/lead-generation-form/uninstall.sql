-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wlgf_current_version', 'wlgf_last_version', 'we_lgf_current_version', 'we_lgf_last_version', 'wlgf_settings', 'wlgf_form_1', 'wlgf_form_2', 'wlgf_secretkey', 'wlgf_version_check');
DELETE FROM wp_options WHERE option_name LIKE 'wlgf_saved_form_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'wlgf_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'lgf_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'lgf_saved_form_data_%';

