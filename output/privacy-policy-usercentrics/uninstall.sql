-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppguc_addon_events', 'ppguc_usercentrics_page_option', 'ppguc_usercentrics_display_page', 'ppguc_usercentrics_policy_id', 'ppguc_usercentrics_onboarding_complete', 'ppguc_admin_notice', 'ppguc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'ppguc_page_published_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ppguc_usercentrics_page', '_ppguc_preview_mode_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ppguc_usercentrics_page', '_ppguc_preview_mode_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ppguc_usercentrics_page', '_ppguc_preview_mode_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ppguc_usercentrics_page', '_ppguc_preview_mode_page');

