-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpaimojo', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_api';
DELETE FROM wp_options WHERE option_name LIKE '%chat_personas';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%has_notes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%has_notes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%has_notes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%has_notes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%notes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%notes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%notes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%notes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%panel_settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%panel_settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%panel_settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%panel_settings';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%quick_access';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%quick_access';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%quick_access';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%quick_access';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%wizard_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%wizard_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%wizard_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%wizard_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%current_step';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%current_step';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%current_step';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%current_step';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_results';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_results';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_results';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_results';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%contents_introduction';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%contents_introduction';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%contents_introduction';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%contents_introduction';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%contents_outlines';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%contents_outlines';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%contents_outlines';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%contents_outlines';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%contents_conclusion';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%contents_conclusion';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%contents_conclusion';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%contents_conclusion';

