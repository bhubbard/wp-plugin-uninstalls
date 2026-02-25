-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wip_custom_login_settings', 'wip_custom_login_fontlist');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%';

