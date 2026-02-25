-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adroll_adv_eid', 'adroll_pixel_eid', 'adroll_do_activation_redirect', 'admin_notice_success', 'admin_notice_warning', 'adroll_do_activation', 'adroll_do_deactivation', 'adroll_final_attempt_date', 'adroll_initial_setup_date', 'adroll_last_attempted_date', 'adroll_pixel_inject_attempts', 'adroll_plugin_silenced');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'adroll_pixel_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'adroll_pixel_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'adroll_pixel_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'adroll_pixel_%';

