-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_course_activity', '_badgeos_course_activity_id', '_badgeos_course_activity_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_course_activity', '_badgeos_course_activity_id', '_badgeos_course_activity_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_course_activity', '_badgeos_course_activity_id', '_badgeos_course_activity_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_course_activity', '_badgeos_course_activity_id', '_badgeos_course_activity_info');

