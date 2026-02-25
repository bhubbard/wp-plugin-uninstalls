-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddyforms_ultimate_settings', 'um_options', 'recently_activated', 'buddyforms_ultimate_member_update_136', 'active_sitewide_plugins', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_buddyforms_options', 'buddyforms_um_activity', '_bf_form_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('_buddyforms_options', 'buddyforms_um_activity', '_bf_form_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('_buddyforms_options', 'buddyforms_um_activity', '_bf_form_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_buddyforms_options', 'buddyforms_um_activity', '_bf_form_slug');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

