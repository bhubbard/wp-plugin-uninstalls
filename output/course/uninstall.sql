-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('course_type', 'course_target', 'course_duration', 'course_description', 'course_legislation', 'course_legisltion');
DELETE FROM wp_usermeta WHERE meta_key IN ('course_type', 'course_target', 'course_duration', 'course_description', 'course_legislation', 'course_legisltion');
DELETE FROM wp_termmeta WHERE meta_key IN ('course_type', 'course_target', 'course_duration', 'course_description', 'course_legislation', 'course_legisltion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('course_type', 'course_target', 'course_duration', 'course_description', 'course_legislation', 'course_legisltion');

