-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('badgeos_group_management_teacher_role', 'badgeos_group_management_student_role');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('school_id', 'teacher_id', '_bp_invite_codes_group_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('school_id', 'teacher_id', '_bp_invite_codes_group_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('school_id', 'teacher_id', '_bp_invite_codes_group_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('school_id', 'teacher_id', '_bp_invite_codes_group_id');

