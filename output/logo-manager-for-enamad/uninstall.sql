-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enamad_logo', 'enamad_new_ver_notice_applied_0_2', 'enamadlogo_redirect_after_activation_option');

