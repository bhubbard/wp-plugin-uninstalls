-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r2k_captcha_service', 'r2k_captcha_error', 'r2k_captcha_last_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('r2k_rc_last_dis_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('r2k_rc_last_dis_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('r2k_rc_last_dis_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('r2k_rc_last_dis_error');

