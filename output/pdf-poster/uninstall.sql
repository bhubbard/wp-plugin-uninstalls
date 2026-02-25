-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpdf_option', 'pdfp_gutenberg_enable', 'pdfp_settings', 'pdfp_css', 'pdfp_import', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('isGutenberg', '_fpdf', 'meta-image', 'pdfp_onei_pp_height', 'pdfp_onei_pp_width', 'pdfp_onei_pp_print', 'pdfp_onei_pp_pgname', '_fpdfe', 'pdfp_onei_pp_enable_default_viewer', 'pdfp_onei_pp_right_click', 'pdfp_onei_pp_side', 'pdfp_onei_pp_disable_alert', 'pdfp_onei_pp_jump_to_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('isGutenberg', '_fpdf', 'meta-image', 'pdfp_onei_pp_height', 'pdfp_onei_pp_width', 'pdfp_onei_pp_print', 'pdfp_onei_pp_pgname', '_fpdfe', 'pdfp_onei_pp_enable_default_viewer', 'pdfp_onei_pp_right_click', 'pdfp_onei_pp_side', 'pdfp_onei_pp_disable_alert', 'pdfp_onei_pp_jump_to_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('isGutenberg', '_fpdf', 'meta-image', 'pdfp_onei_pp_height', 'pdfp_onei_pp_width', 'pdfp_onei_pp_print', 'pdfp_onei_pp_pgname', '_fpdfe', 'pdfp_onei_pp_enable_default_viewer', 'pdfp_onei_pp_right_click', 'pdfp_onei_pp_side', 'pdfp_onei_pp_disable_alert', 'pdfp_onei_pp_jump_to_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('isGutenberg', '_fpdf', 'meta-image', 'pdfp_onei_pp_height', 'pdfp_onei_pp_width', 'pdfp_onei_pp_print', 'pdfp_onei_pp_pgname', '_fpdfe', 'pdfp_onei_pp_enable_default_viewer', 'pdfp_onei_pp_right_click', 'pdfp_onei_pp_side', 'pdfp_onei_pp_disable_alert', 'pdfp_onei_pp_jump_to_page');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

