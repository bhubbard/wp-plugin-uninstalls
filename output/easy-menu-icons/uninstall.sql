-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emicons_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emicons_settings', 'emicons_notice_ignore_emicon_pro_plugin_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('emicons_settings', 'emicons_notice_ignore_emicon_pro_plugin_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('emicons_settings', 'emicons_notice_ignore_emicon_pro_plugin_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emicons_settings', 'emicons_notice_ignore_emicon_pro_plugin_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'emicons_notice_ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'emicons_notice_ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'emicons_notice_ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emicons_notice_ignore_%';

