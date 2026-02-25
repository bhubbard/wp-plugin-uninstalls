-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_tutor_instructor_rejected', '_is_tutor_instructor');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_tutor_instructor_rejected', '_is_tutor_instructor');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_tutor_instructor_rejected', '_is_tutor_instructor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_tutor_instructor_rejected', '_is_tutor_instructor');

