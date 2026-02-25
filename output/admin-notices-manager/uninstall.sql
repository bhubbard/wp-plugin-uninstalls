-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anm_update_notice_needed', 'anm_active_version', 'anm_settings', 'anm-plugin-installed-by-user-id');

