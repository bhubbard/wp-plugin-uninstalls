-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddyforms_buddypress_settings', 'buddyforms_posttypes_default', 'recently_activated', 'buddyforms_registration_form', 'buddyforms_registration_page', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_buddyforms_options', 'bp_xprofile_visibility_levels', 'message', 'bf_bp_activity_id', '_bf_form_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('_buddyforms_options', 'bp_xprofile_visibility_levels', 'message', 'bf_bp_activity_id', '_bf_form_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('_buddyforms_options', 'bp_xprofile_visibility_levels', 'message', 'bf_bp_activity_id', '_bf_form_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_buddyforms_options', 'bp_xprofile_visibility_levels', 'message', 'bf_bp_activity_id', '_bf_form_slug');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%';

