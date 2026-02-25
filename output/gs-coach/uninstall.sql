-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gscoach_activation_redirect', 'gs_coach_active_time', 'gs_coach_review_dismiss', 'gs_coach_maybe_later', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gscoach_profession', '_gscoach_in', '_gscoach_tw', '_gscoach_fb', '_gscoach_gplus', '_gscoach_ytube', '_gscoach_psite', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gscoach_profession', '_gscoach_in', '_gscoach_tw', '_gscoach_fb', '_gscoach_gplus', '_gscoach_ytube', '_gscoach_psite', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gscoach_profession', '_gscoach_in', '_gscoach_tw', '_gscoach_fb', '_gscoach_gplus', '_gscoach_ytube', '_gscoach_psite', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gscoach_profession', '_gscoach_in', '_gscoach_tw', '_gscoach_fb', '_gscoach_gplus', '_gscoach_ytube', '_gscoach_psite', '_wp_attachment_image_alt');

