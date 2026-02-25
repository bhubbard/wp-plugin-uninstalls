-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsenvato_active_time', 'gsenvato_review_dismiss', 'gsenvato_maybe_later', 'gsadmin_maybe_later', 'gsenv_activation_redirect', 'gsadmin_active_time', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gsenv_ignore_notice279');
DELETE FROM wp_usermeta WHERE meta_key IN ('gsenv_ignore_notice279');
DELETE FROM wp_termmeta WHERE meta_key IN ('gsenv_ignore_notice279');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gsenv_ignore_notice279');

