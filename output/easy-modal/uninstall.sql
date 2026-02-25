-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwl_options_group1', '_transient_plugin_slugs', 'EasyModal_ThemeList', 'EasyModal_ModalList', 'EasyModal_Settings', 'EasyModal_License', 'EasyModal_License_Status', 'EasyModal_License_LastChecked', 'EasyModal_Version');
DELETE FROM wp_options WHERE option_name LIKE 'EasyModal_Theme-%';
DELETE FROM wp_options WHERE option_name LIKE 'EasyModal_Modal-%';
DELETE FROM wp_options WHERE option_name LIKE '%-license-check';
DELETE FROM wp_options WHERE option_name LIKE '%-addon-list';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emodal_popup_maker_notice_dismissed', 'easy-modal-pro_autoopen', 'easy-modal-pro-exit-modals_autoexit', 'easy-modal-pro-login-modals_loginmodal');
DELETE FROM wp_usermeta WHERE meta_key IN ('emodal_popup_maker_notice_dismissed', 'easy-modal-pro_autoopen', 'easy-modal-pro-exit-modals_autoexit', 'easy-modal-pro-login-modals_loginmodal');
DELETE FROM wp_termmeta WHERE meta_key IN ('emodal_popup_maker_notice_dismissed', 'easy-modal-pro_autoopen', 'easy-modal-pro-exit-modals_autoexit', 'easy-modal-pro-login-modals_loginmodal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emodal_popup_maker_notice_dismissed', 'easy-modal-pro_autoopen', 'easy-modal-pro-exit-modals_autoexit', 'easy-modal-pro-login-modals_loginmodal');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_post_modals';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_post_modals';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_post_modals';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_post_modals';

