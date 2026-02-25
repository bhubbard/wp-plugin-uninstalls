-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_pinterest_settings', 'gspin_upgraded_to_1_4_0', 'gspin_active_time', 'gspin_review_dismiss', 'gspin_maybe_later', 'gsadmin_active_time', 'gsadmin_maybe_later', 'gspin_activation_redirect', 'gspin_shortcode_prefs', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gspin_ignore_notice279');
DELETE FROM wp_usermeta WHERE meta_key IN ('gspin_ignore_notice279');
DELETE FROM wp_termmeta WHERE meta_key IN ('gspin_ignore_notice279');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gspin_ignore_notice279');

