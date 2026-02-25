-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('badgeos_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_count', '_badgeos_tutor_trigger', '_badgeos_tutor_object_id', '_badgeos_tutor_object_arg1');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_count', '_badgeos_tutor_trigger', '_badgeos_tutor_object_id', '_badgeos_tutor_object_arg1');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_count', '_badgeos_tutor_trigger', '_badgeos_tutor_object_id', '_badgeos_tutor_object_arg1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_count', '_badgeos_tutor_trigger', '_badgeos_tutor_object_id', '_badgeos_tutor_object_arg1');

