-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_login_crendentials', 'tpsa_admin-bar_pro_fields', 'tp_admin_safety_guard_deactivate_token', 'tpsa_version', 'tpsm_is_setup_wizard', 'tpsm_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tpsa_otp_code', 'tpsm_dismissed_setup_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tpsa_otp_code', 'tpsm_dismissed_setup_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tpsa_otp_code', 'tpsm_dismissed_setup_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tpsa_otp_code', 'tpsm_dismissed_setup_notice');

